GooderReads.Views.TextDetailView = Backbone.View.extend({
  template: JST["texts/detail"],

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
    // this.listenTo(this.reviews, "reset", this.render);
  },

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    this.populateReviews();
    this.populateComments();

    return this;
  },

  events: {
    "click #text-description-more": "switchDescription",
    "click #text-description-less": "switchDescription",
    "click #text-tabs a": "changeTabs",
    "show": "changeTabsShow"
  },

  switchDescription: function(event) {
    event.preventDefault();

    $("#text-description-long").toggleClass("hide");
    $("#text-description-short").toggleClass("hide");
  },

  changeTabs: function(event) {
    event.preventDefault();

    var id = event.target.id;

    $("#text-" + id).toggleClass("active");
  },

  changeTabsShow: function(event) {
    var oldId = event.relatedTarget.id;
    $("#text-" + oldId).removeClass("active");

    var id = event.target.id;
    $("#text-" + id).addClass("active");
  },

  populateReviews: function() {
    if(!this.reviews) {
      var that = this;

      this.reviews = new GooderReads.Collections.Reviews([], {
        text_id: this.model.id
      });
      this.reviews.fetch({
        parse: true,
        success: function(data) {
          that.reviews.reset(data.toJSON());
        },
        error: function(data, response) {
          GooderReads.logErrors(["Unable to load reviews"]);
        }
      });
    }

    this.reviewView = this.reviewView || new GooderReads.Views.TextReviewIndex({
      collection: this.reviews,
      text: this.model
    });

    this.$el.find("#text-reviews").html(this.reviewView.render().$el);
  },

  populateComments: function() {
    if(!this.comments) {
      var that = this;

      this.comments = new GooderReads.Collections.Comments([], {
        text_id: this.model.id
      });
      this.comments.fetch({
        success: function(data) {
          that.comments.reset(data.toJSON());
        },
        error: function(data, response) {
          GooderReads.logErrors(["Unable to load comments"]);
        }
      });
    }

    this.commentsView = this.commentsView || new GooderReads.Views.TextCommentIndex({
      collection: this.comments,
      text: this.model
    });

    this.$el.find("#text-comments").html(this.commentsView.render().$el);
  },

  removeChildViews: function() {
    this.commentsView.remove();
    this.reviewView.remove();
  }
});

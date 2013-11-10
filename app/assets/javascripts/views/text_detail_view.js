GooderReads.Views.TextDetailView = Backbone.View.extend({
  template: JST["texts/detail"],

  initialize: function(options) {
    this.reviews = options.reviews;

    this.listenTo(this.model, "change", this.render);
    // this.listenTo(this.reviews, "reset", this.render);
  },

  render: function() {
    debugger
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    var reviewView = new GooderReads.Views.TextReviewIndex({
      collection: this.reviews,
      text: this.model
    });

    this.$el.find(".reviews").html(reviewView.render().$el);

    return this;
  },

  events: {
    "click #text-description-more": "switchDescription",
    "click #text-description-less": "switchDescription"
  },

  switchDescription: function(event) {
    event.preventDefault();

    $("#text-description-long").toggleClass("hide");
    $("#text-description-short").toggleClass("hide");
  }
});

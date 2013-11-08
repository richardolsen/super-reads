GooderReads.Views.TextsIndexDetailView = Backbone.View.extend({
  template: JST["texts/index_detail"],

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      text: this.model,
      user: this.user
    });

    this.$el.html(content);

    var $ratingEl = this.$el.find("#rating-" + this.model.get("id"));
    var ratingView = new GooderReads.Views.RatingFormView({
      model: this.model
    });
    $ratingEl.html(ratingView.render().$el);

    return this;
  },

  events: {
    "click .dropdown a": "changeTextState"
  },

  changeTextState: function(event) {
    event.preventDefault();

    var state = $(event.target).attr("data-state");

    if(this.model.get("state") == undefined) {
      this.createNewState(state);
    } else if(this.model.get("state") !== state) {
      this.changeState(state);
    } // otherwise do nothing
  },

  createNewState: function(state) {
    if(state === "read") {
      this.requestReview();
    }

    var that = this;
    $.ajax({
      url: "/texts/" + this.model.get("id") + "/text_states",
      type: "post",
      data: {
        state: state
      },
      success: function(data) {
        that.model.set("state", state);
      },
      error: function(data, response) {
        ;
      }
    });
  },

  changeState: function(state) {
    if(state === "read") {
      this.requestReview();
    }

    var that = this;
    $.ajax({
      url: "/texts/" + this.model.get("id") + "/text_states/1",
      type: "put",
      data: {
        state: state
      },
      success: function(data) {
        that.model.set("state", state);
      },
      error: function(data, response) {
        ;
      }
    });
  },

  requestReview: function() {
    var reviewView = new GooderReads.Views.ReviewFormView({
      model: this.model
    });

    var $modalEl = $("#review-modal");
    $modalEl.html(reviewView.render().$el);
    reviewView.toggleModal();
  }
});

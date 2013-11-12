GooderReads.Views.TextsIndexDetailView = Backbone.View.extend({
  template: JST["texts/index_detail"],
  _childViews: [],

  initialize: function(options) {
    this.listenTo(this.model, "change:state", this.render);
  },

  render: function() {
    var content = this.template({
      text: this.model
    });

    // this sometimes breaks the modal (but sometimes not)
    this.$el.html(content);

    var $ratingEl = this.$el.find("#rating-" + this.model.get("id"));
    var ratingView = new GooderReads.Views.RatingFormView({
      model: this.model
    });
    this._childViews.push(ratingView);
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
    var that = this;
    $.ajax({
      url: "/texts/" + this.model.get("id") + "/text_states/1",
      type: "put",
      data: {
        state: state
      },
      success: function(data) {
        that.model.set("state", state);
        if(state === "read") {
          that.requestReview();
        }
      },
      error: function(data, response) {
        ;
      }
    });
  },

  requestReview: function() {
    var that = this;

    var review = new GooderReads.Models.Review({
      id: -1,
      text_id: this.model.get("id")
    });
    review.fetch({
      success: function(data) {
        var reviewView = new GooderReads.Views.ReviewFormView({
          text: that.model,
          model: data
        });
        that._childViews.push(reviewView);

        var $modalEl = $("#review-modal");
        $modalEl.html(reviewView.render().$el);
        reviewView.toggleModal();
      },
      error: function() {
        debugger
      }
    });
  },

  removeChildViews: function() {
    this._childViews.forEach(function(view) {
      if(view.removeChildren) view.removeChildren();
      view.remove();
    });
  }
});

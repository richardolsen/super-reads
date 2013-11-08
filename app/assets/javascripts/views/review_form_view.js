GooderReads.Views.ReviewFormView = Backbone.View.extend({
  template: JST["reviews/form"],

  initialize: function(options) {
    this.text = options.text;
  },

  render: function() {
    var content = this.template({
      review: this.model,
      text: this.text
    });

    this.$el.html(content);

    var $ratingEl = this.$el.find("#rating-" + this.text.get("id"));
    var ratingView = new GooderReads.Views.RatingFormView({
      model: this.text
    });
    $ratingEl.html(ratingView.render().$el);

    return this;
  },

  toggleModal: function() {
    var $modalEl = this.$el.find("#modal-review-edit-" + this.text.get("id"));
    $modalEl.modal('toggle');
  },

  events: {
    "click .review-save": "saveReview"
  },

  saveReview: function(event) {
    event.preventDefault();

    var title = $("#review-title-" + this.text.get("id")).val();
    var body = $("#review-body-" + this.text.get("id")).val();
    var review = new GooderReads.Models.Review({
      text_id: this.text.get("id"),
      title: title,
      body: body
    });

    var that = this;
    review.save({}, {
      success: function(data) {
        that.toggleModal();
      },
      error: function(data, response) {
        debugger
      }
    });
  }
});

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
    this.model.set("title", title);
    this.model.set("body", body);

    // the kludge of -1 in id place
    if(this.model.get("id") === -1) this.model.unset("id");

    var that = this;
    this.model.save({}, {
      success: function(data) {
        that.toggleModal();
        GooderReads.logSuccess("Review saved");
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to save review"])
      }
    });
  }
});

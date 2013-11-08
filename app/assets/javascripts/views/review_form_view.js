GooderReads.Views.ReviewFormView = Backbone.View.extend({
  template: JST["reviews/form"],

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    var $ratingEl = this.$el.find("#rating-" + this.model.get("id"));
    var ratingView = new GooderReads.Views.RatingFormView({
      model: this.model
    });
    $ratingEl.html(ratingView.render().$el);

    return this;
  },

  toggleModal: function() {
    var $modalEl = this.$el.find("#modal-review-edit-" + this.model.get("id"));
    $modalEl.modal('toggle');
  }
});

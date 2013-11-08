GooderReads.Views.ReviewFormView = Backbone.View.extend({
  template: JST["reviews/form"],

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    return this;
  },

  toggleModal: function() {
    var $modalEl = this.$el.find("#modal-review-edit-" + this.model.get("id"));
    $modalEl.modal('toggle');
  }
});

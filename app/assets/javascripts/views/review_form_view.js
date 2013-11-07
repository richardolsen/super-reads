GooderReads.Views.ReviewFormView = Backbone.View.extend({
  template: JST["reviews/form"],

  initialize: function(options) {
    this.text = options.text
  },

  render: function() {
    var content = this.template({
      text: this.text
    });

    this.$el.html(content);

    return this;
  },

  toggleModal: function() {
    var $modalEl = this.$el.find("#modal-review-edit-" + this.text.get("id"));
    $modalEl.modal('toggle');
  }
});

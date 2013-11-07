GooderReads.Views.RatingFormView = Backbone.View.extend({
  template: JST["ratings/form"],

  render: function() {
    var content = this.template();

    this.$el.html(content);

    return this;
  }
});

GooderReads.Views.TextsIndexDetailView = Backbone.View.extend({
  template: JST["texts/index_detail"],

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    return this;
  }
});

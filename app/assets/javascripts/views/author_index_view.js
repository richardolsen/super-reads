GooderReads.Views.AuthorIndexView = Backbone.View.extend({
  template: JST["authors/index"],

  render: function() {
    var content = this.template({
      authors: this.collection
    });

    this.$el.html(content);

    return this;
  }
})

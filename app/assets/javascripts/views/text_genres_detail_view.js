GooderReads.Views.TextGenresDetailView = Backbone.View.extend({
  template: JST["genres/detail"],

  render: function() {
    var content = this.template({
      genre: this.model
    });

    this.$el.html(content);

    return this;
  }
});

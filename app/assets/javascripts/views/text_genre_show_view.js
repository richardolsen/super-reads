GooderReads.Views.TextGenreShowView = Backbone.View.extend({
  template: JST["genres/show"],
  _childViews: [],

  render: function() {
    var content = this.template({
      genre: this.model,
      texts: this.collection
    });

    this.$el.html(content);

    var that = this;
    var $subEl = this.$el.find(".texts-list");
    this.collection.forEach(function(text) {
      var detailView = new GooderReads.Views.TextsIndexDetailView({
        model: text
      });

      that._childViews.push(detailView);

      $subEl.append(detailView.render().$el);
    });

    return this;
  },

  removeChildViews: function() {
    this._childViews.forEach(function(view) {
      if(view.removeChildren) view.removeChildren();
      view.remove();
    });
  }
});

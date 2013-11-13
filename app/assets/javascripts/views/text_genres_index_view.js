GooderReads.Views.TextGenresIndexView = Backbone.View.extend({
  template: JST["genres/index"],
  _childViews: [],

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var $subEl = this.$el.find(".genres-list");
    var that = this;
    this.collection.forEach(function(genre) {
      var detailView = new GooderReads.Views.TextGenresDetailView({
        model: genre
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

GooderReads.Views.TextsIndexView = Backbone.View.extend({
  template: JST["texts/index"],
  _childViews: [],

  initialize: function(options) {
    this.listenTo(this.collection, "sync", this.render);
  },

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var that = this;
    var $subEl = this.$el.find(".texts-list");
    this.collection.forEach(function(text) {
      var detailView = new GooderReads.Views.TextsIndexDetailView({
        model: text,
        user: that.user
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
})

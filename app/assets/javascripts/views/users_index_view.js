GooderReads.Views.UsersIndexView = Backbone.View.extend({
  template: JST["users/index"],
  _childViews: [],

  initialize: function(options) {
    this.listenTo(this.collection, "sync reset", this.render);
  },

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var $subEl = this.$el.find(".users-list")

    var that = this;
    this.collection.forEach(function(user) {
      var detailView = new GooderReads.Views.UsersIndexDetailView({
        model: user
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

GooderReads.Views.UsersIndexView = Backbone.View.extend({
  template: JST["users/index"],

  initialize: function(options) {
    this.listenTo(this.collection, "sync reset", this.render);
  },

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var $subEl = this.$el.find(".users-list")
    this.collection.forEach(function(user) {
      var detailView = new GooderReads.Views.UsersIndexDetailView({
        model: user
      });

      $subEl.append(detailView.render().$el);
    });

    return this;
  },

  remove: function() {
    debugger
  }
});

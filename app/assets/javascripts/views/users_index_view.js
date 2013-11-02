GooderReads.Views.UsersIndexView = Backbone.View.extend({
  template: JST["users/index"],

  initialize: function(options) {
    this.listenTo(this.collection, "sync reset", this.render);
  },

  render: function() {
    var content = this.template({
      users: this.collection
    });

    this.$el.html(content);

    return this;
  }
});

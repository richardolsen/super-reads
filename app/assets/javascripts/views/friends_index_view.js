GooderReads.Views.FriendsIndexView = Backbone.View.extend({
  template: JST["friends/index"],

  render: function() {
    var content = this.template({
      friends: this.collection
    });

    this.$el.html(content);

    return this;
  }
})

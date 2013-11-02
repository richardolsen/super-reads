GooderReads.Views.UserShowView = Backbone.View.extend({
  template: JST["users/show"],

  initialize: function() {
    ;
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  }
});

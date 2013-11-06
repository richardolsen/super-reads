GooderReads.Views.UserShowView = Backbone.View.extend({
  template: JST["users/show"],

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  }
});

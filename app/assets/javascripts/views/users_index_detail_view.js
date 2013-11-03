GooderReads.Views.UsersIndexDetailView = Backbone.View.extend({
  template: JST["users/index_detail"],

  tagName: "li",
  className: "user-item",

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

  events: {
    "click .friend-button": "friendEvent"
  },

  friendEvent: function(event) {
    event.preventDefault();

    this.model.friend();
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  }
});

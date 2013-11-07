GooderReads.Views.UsersIndexDetailView = Backbone.View.extend({
  template: JST["users/index_detail"],

  tagName: "li",
  className: "user-item",

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

  events: {
    "click .friend-button": "friendEvent",
    "click .user-detail": "modalEvent",
    "click .user-profile": "closeModalEvent"
  },

  friendEvent: function(event) {
    event.preventDefault();

    this.model.friend();
  },

  modalEvent: function(event) {
    $('#modal-' + this.model.get("id")).modal('toggle');
  },

  closeModalEvent: function(event) {
    $('#modal-' + this.model.get("id")).modal('toggle');
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  }
});

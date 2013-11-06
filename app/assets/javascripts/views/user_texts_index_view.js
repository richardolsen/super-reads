GooderReads.Views.UserTextsIndexView = Backbone.View.extend({
  template: JST["users/texts_index"],

  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  },

  events: {
    "click #text-tabs a": "changeTabs",
    "show": "changeTabsShow"
  },

  changeTabs: function(event) {
    event.preventDefault();

    var id = event.target.id;

    $("#texts-" + id).toggleClass("active");
  },

  changeTabsShow: function(event) {
    var oldId = event.relatedTarget.id;
    $("#texts-" + oldId).removeClass("active");

    var id = event.target.id;
    $("#texts-" + id).addClass("active");
  }
});

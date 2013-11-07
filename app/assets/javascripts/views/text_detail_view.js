GooderReads.Views.TextDetailView = Backbone.View.extend({
  template: JST["texts/detail"],

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);

    return this;
  },

  events: {
    "click #text-description-more": "switchDescription",
    "click #text-description-less": "switchDescription"
  },

  switchDescription: function(event) {
    event.preventDefault();

    $("#text-description-long").toggleClass("hide");
    $("#text-description-short").toggleClass("hide");
  }
});

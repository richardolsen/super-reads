GooderReads.Views.TextsIndexView = Backbone.View.extend({
  template: JST["texts/index"],

  initialize: function(options) {
    this.listenTo(this.collection, "sync add remove", this.render);
  },

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var that = this;
    var $subEl = this.$el.find(".texts-list");
    this.collection.forEach(function(text) {
      var detailView = new GooderReads.Views.TextsIndexDetailView({
        model: text,
        user: that.user
      });

      $subEl.append(detailView.render().$el);
    });

    return this;
  }
})

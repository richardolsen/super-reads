GooderReads.Views.TextsIndexView = Backbone.View.extend({
  template: JST["texts/index"],

  initialize: function() {
    this.listenTo(this.collection, "sync add remove", this.render);
  },

  render: function() {
    var content = this.template();

    this.$el.html(content);

    var $subEl = this.$el.find(".texts-list")
    this.collection.forEach(function(text) {
      var detailView = new GooderReads.Views.TextsIndexDetailView({
        model: text
      });

      $subEl.append(detailView.render().$el);
    });

    return this;
  }
})

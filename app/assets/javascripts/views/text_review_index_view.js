GooderReads.Views.TextReviewIndex = Backbone.View.extend({
  template: JST["reviews/index"],

  initialize: function(options) {
    this.text = options.text;

    this.listenTo(this.collection, "reset", this.render);
  },

  render: function() {
    debugger
    var content = this.template({
      reviews: this.collection,
      text: this.text
    });

    this.$el.html(content);

    return this;
  }
});

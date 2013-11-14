GooderReads.Views.AuthorDetailView = Backbone.View.extend({
  template: JST["authors/detail"],

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      author: this.model
    });

    this.$el.html(content);

    var textsView = new GooderReads.Views.TextsIndexView({
      collection: this.model.get("texts")
    });

    var $subEl = this.$el.find(".texts-list");
    $subEl.html(textsView.render().$el);

    return this;
  },

  events: {
    "click #author-bio-more": "switchBio",
    "click #author-bio-less": "switchBio"
  },

  switchBio: function(event) {
    event.preventDefault();

    $("#author-bio-long").toggleClass("hide");
    $("#author-bio-short").toggleClass("hide");
  }
});

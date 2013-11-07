GooderReads.Views.RatingFormView = Backbone.View.extend({
  template: JST["ratings/form"],
  className: "rating",

  render: function() {
    var content = this.template({
      text: this.model
    });

    this.$el.html(content);
    this.resetRating();

    return this;
  },

  events: {
    "click .star": "rateText",
    "mouseover .star-div": "accordionRating",
    "mouseout .star-div": "resetRating"
  },

  rateText: function(event) {
    event.preventDefault();

    var rating = parseInt($(event.target).attr("data-id"));

    debugger
  },

  accordionRating: function(event) {
    var rating = parseInt($(event.target).attr("data-id"));

    this.setRating(rating);
  },

  resetRating: function() {
    var rating = this.model.get("user_rating");
    if(!rating) rating = 0;

    this.setRating(rating);
  },

  setRating: function(rating) {
    for(var i = 1; i <= 5; i++) {
      var $star = this.$el.find("#star-" + this.model.get("id") + "-" + i);
      $star.html(i > rating ? "☆" : "★")
    }
  }
});

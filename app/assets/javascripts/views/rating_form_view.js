GooderReads.Views.RatingFormView = Backbone.View.extend({
  template: JST["ratings/form"],
  className: "rating",

  initialize: function(options) {
    this.listenTo(this.model, "change", this.render);
  },

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

    var user_rating = this.model.get("user_rating");
    if(!user_rating || rating != user_rating) {
      this.sendRating(rating);
    }
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
  },

  sendRating: function(rating) {
    var that = this;
    $.ajax({
      url: "/texts/" + this.model.get("id") + "/rate",
      type: "post",
      data: {
        rating: rating
      },
      success: function(data) {
        that.model.set("user_rating", data.rating);
      },
      error: function(data, response) {
        debugger
      }
    })
  },
});

GooderReads.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  initialize: function(options) {
    this.set("fullname", options.firstname + " " + options.lastname);
  }
});

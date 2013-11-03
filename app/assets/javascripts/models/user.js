GooderReads.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  defaults: {
    firstname: "",
    lastname: "",

  },

  initialize: function(options) {
    // this.set("fullname", options.firstname + " " + options.lastname);
    this.set("fullname", this.get("firstname") + " " + this.get("lastname"));
  }
});

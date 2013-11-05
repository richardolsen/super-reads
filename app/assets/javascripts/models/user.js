GooderReads.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  defaults: {
    firstname: "",
    lastname: "",

  },

  initialize: function(options) {
    // this.set("fullname", options.firstname + " " + options.lastname);
    this.set("fullname", this.get("firstname") + " " + this.get("lastname"));
  },

  friend: function() {
    var url = this.urlRoot +
      "/" +
      this.get("id") +
      (this.get("friended") ? "/unfriend" : "/friend");

    var that = this;
    $.ajax({
      url: url,
      type: "put",
      success: function(data) {
        that.set("friended", data.friended);
      },
      error: function(data, response) {
        ;
      }
    });
  },

  birthDate: function() {
    var bd = new Date(this.get("birthdate"));
    return moment(bd).format('MMMM DD, YYYY')
  },

  joinDate: function() {
    var dateCreated = new Date(this.get("created_at"));
    return moment(dateCreated).format('MMMM, YYYY')
  },

  age: function() {
    var birthdate = new Date(this.get("birthdate"));
    var then = moment(birthdate);
    var now = moment();

    return then.fromNow(true);
  }
});

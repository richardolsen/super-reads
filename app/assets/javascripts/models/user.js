GooderReads.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  defaults: {
    firstname: "",
    lastname: ""
  },

  fullname: function() {
    return this.get("firstname") + " " + this.get("lastname");
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
    return moment.utc(bd).format('MMMM D, YYYY')
  },

  joinDate: function() {
    var dateCreated = new Date(this.get("created_at"));
    return moment(dateCreated).format('MMMM, YYYY')
  },

  age: function() {
    var birthdate = new Date(this.get("birthdate"));
    var now = Date.now();

    return ~~((now - birthdate) / (31557600000));
  },

  parse: function(attrs, options) {
    if(attrs.texts) {
      var texts = attrs.texts;
      delete attrs.texts;

      var readTexts = [];
      var queueTexts = [];
      var currentTexts = [];
      texts.forEach(function(text) {
        if(text.state === "read") {
          readTexts.push(text);
        } else if(text.state === "queue") {
          queueTexts.push(text);
        } else {
          currentTexts.push(text);
        }
      });

      attrs.readTexts = new GooderReads.Collections.Texts(readTexts, { parse: true });
      attrs.queueTexts = new GooderReads.Collections.Texts(queueTexts, { parse: true });
      attrs.currentTexts = new GooderReads.Collections.Texts(currentTexts, { parse: true });
    }

    return attrs;
  }
});

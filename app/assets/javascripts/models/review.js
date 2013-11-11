GooderReads.Models.Review = Backbone.Model.extend({
  urlRoot: function() {
    return "/texts/" + this.get("text_id") + "/reviews";
  },

  parse: function(attrs, options) {
    if(attrs) {
      var user = attrs.user;

      if(user) {
        attrs.user = new GooderReads.Models.User(user);
      }
    }

    return attrs;
  },

  postedDateOffset: function() {
    return moment(this.get("created_at")).fromNow();
  }
});

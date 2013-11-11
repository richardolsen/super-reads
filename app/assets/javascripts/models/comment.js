GooderReads.Models.Comment = Backbone.Model.extend({
  url: function() {
    return "/texts/" + this.get("commentable_id") + "/comments";
  },

  parse: function(attrs, options) {
    var user = attrs.user
    if(user) {
      attrs.user = new GooderReads.Models.User(user);
    }

    return attrs;
  },

  postedDateOffset: function() {
    return moment(this.get("created_at")).fromNow();
  }
});

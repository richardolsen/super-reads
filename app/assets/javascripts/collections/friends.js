GooderReads.Collections.Friends = Backbone.Collection.extend({
  model: GooderReads.Models.User,
  url: function() {
    return "/users/" + this.user_id + "/friends";
  },

  initialize: function(models, options) {
    this.user_id = options.user_id
  }
})

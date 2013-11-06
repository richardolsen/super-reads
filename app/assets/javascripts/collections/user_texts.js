GooderReads.Collections.UserTexts = Backbone.Collection.extend({
  model: GooderReads.Models.Text,

  url: function() {
    return "/users/" + this.user_id + "/texts"
  },

  initialize: function(models, options) {
    this.user_id = options.user_id
  },

  parse: function(attrs, options) {
    attrs.forEach(function(attr) {
      var authors = attr.authors;
      attr.authors = new GooderReads.Collections.Authors(authors);
    });

    return attrs;
  }
})

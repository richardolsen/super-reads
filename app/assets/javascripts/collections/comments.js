GooderReads.Collections.Comments = Backbone.Collection.extend({
  model: GooderReads.Models.Comment,
  url: function() {
    return "/texts/" + this.text_id + "/comments"
  },

  initialize: function(models, options) {
    this.text_id = options.text_id
  }
});

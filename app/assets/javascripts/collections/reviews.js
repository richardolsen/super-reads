GooderReads.Collections.Reviews = Backbone.Collection.extend({
  model: GooderReads.Models.Review,

  initialize: function(models, options) {
    this.text_id = options.text_id;
  },

  url: function() {
    return "/texts/" + this.text_id + "/reviews"
  }
});

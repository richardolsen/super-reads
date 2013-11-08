GooderReads.Models.Review = Backbone.Model.extend({
  urlRoot: function() {
    return "/texts/" + this.get("text_id") + "/reviews";
  }
});

GooderReads.Models.Text = Backbone.Model.extend({
  initialize: function(options) {
    ;
  },

  stateString: function() {
    var state = this.get("state");
    if(state) {
      if(state === "read") {
        return "Read";
      } else if (state === "current") {
        return "Currently reading";
      }
    }

    return "Want to read";
  }
});

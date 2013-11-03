GooderReads.Views.HeaderView = Backbone.View.extend({
  template: JST["header"],

  initialize: function(options){
    if(this.model) {
      this.listenTo(this.model, "change", this.render);
    }
  },

  render: function() {
    var content = this.template({
      user: this.model
    });

    this.$el.html(content);

    return this;
  }
});

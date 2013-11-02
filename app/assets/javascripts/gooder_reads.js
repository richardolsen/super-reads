window.GooderReads = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    if(GooderReads.userData) {
      var user = new GooderReads.Models.User(GooderReads.userData);

      // this.installHeader($(".header"), user);

      new GooderReads.Routers.AppRouter($("#main"), user);

      Backbone.history.start();
    }
  },

  installHeader: function($headerEl, user) {
    // var header = new GooderReads.Views.HeaderView({
    //   user: user
    // });

    // $headerEl.html(header.render().$el);
  }
};

$(document).ready(function(){
  GooderReads.initialize();
});

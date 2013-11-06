window.GooderReads = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    if(GooderReads.userData) {
      GooderReads.user = new GooderReads.Models.User(GooderReads.userData);

      this.installHeader($(".header"), GooderReads.user);

      new GooderReads.Routers.AppRouter($("#main"), GooderReads.user);

      Backbone.history.start();
    } else {
      GooderReads.user = undefined;
      this.installHeader($(".header"), null);
    }
  },

  installHeader: function($headerEl, user) {
    var header = new GooderReads.Views.HeaderView({
      model: user
    });

    header.render();

    $headerEl.html(header.$el);
  },

  loggedIn: function() {
    return GooderReads.user != undefined;
  }
};

$(document).ready(function(){
  GooderReads.initialize();
});

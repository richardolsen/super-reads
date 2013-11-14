window.GooderReads = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    if(GooderReads.userData) {
      GooderReads.user = new GooderReads.Models.User(GooderReads.userData, { parse: true });

      this.installHeader($(".header"), GooderReads.user);

      new GooderReads.Routers.AppRouter($("#main"), GooderReads.user);

      Backbone.history.start();

      GooderReads.logSuccess("Welcome back, " + GooderReads.user.fullname());
    } else {
      GooderReads.user = undefined;
      this.installHeader($(".header"), null);
    }

    // dismiss any errors
    $(window).on("click", function(event) {
      var $div = $(".status-alerts");
      $div.empty();
    });
  },

  installHeader: function($headerEl, user) {
    var header = new GooderReads.Views.HeaderView({
      model: user
    });

    header.render();

    $headerEl.html(header.$el);
  },

  isLoggedIn: function() {
    return GooderReads.user != undefined;
  },

  logErrors: function(errors) {
    // loop through errors and do it.
    var $div = $(".status-alerts");
    errors.forEach(function(error) {
      $div.append("<div class=\"alert alert-danger\">" + error + "</div>")
    });
  },

  logSuccess: function(string) {
    var $div = $(".status-alerts");
    $div.append("<div class=\"alert alert-success\">" + string + "</div>")
  }
};

$(document).ready(function(){
  GooderReads.initialize();
});

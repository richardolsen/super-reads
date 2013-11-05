GooderReads.Routers.AppRouter = Backbone.Router.extend({
  initialize: function($rootEl, user) {
    this.$rootEl = $rootEl;
    this.user = user;
  },

  routes: {
    "": "userShow",
    "users": "usersIndex",
    "user/:id": "userDetail"
  },

  userShow: function() {
    var show = new GooderReads.Views.UserShowView({
      model: this.user
    });

    this._swapView(show.render().$el);
  },

  usersIndex: function() {
    var users = new GooderReads.Collections.Users();
    users.fetch();

    var index = new GooderReads.Views.UsersIndexView({
      collection: users
    });

    this._swapView(index.render().$el);
  },

  userDetail: function(id) {

  },

  _swapView: function(newView) {
    if(this._oldView) {
      this._oldView.remove();
    }

    this._oldView = newView;

    this.$rootEl.html(newView);
  }
});

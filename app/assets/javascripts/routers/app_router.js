GooderReads.Routers.AppRouter = Backbone.Router.extend({
  initialize: function($rootEl, user) {
    this.$rootEl = $rootEl;
    this.user = user;
  },

  routes: {
    "": "index",
    "users": "usersIndex",
    "user/:id": "userDetail",
    "user/:id/texts": "userTextsIndex",
    "texts": "textsIndex",
    "text/:id": "textDetail",
    "friends": "friendsIndex",
    "authors": "authorsIndex",
    "author/:id": "authorDetail"
  },

  index: function() {
    var show = new GooderReads.Views.UserShowView({
      model: this.user
    });

    this._swapView(show);
  },

  usersIndex: function() {
    var users = new GooderReads.Collections.Users();
    users.fetch();

    var index = new GooderReads.Views.UsersIndexView({
      collection: users
    });

    this._swapView(index);
  },

  userDetail: function(id) {
    var user = new GooderReads.Models.User({
      id: id
    });
    user.fetch();

    var show = new GooderReads.Views.UserShowView({
      model: user
    });

    this._swapView(show);
  },

  userTextsIndex: function(id) {
    var user = new GooderReads.Models.User({ id: id });
    user.fetch();

    var index = new GooderReads.Views.UserTextsIndexView({
      model: user
    });

    this._swapView(index);
  },

  textsIndex: function() {
    var texts = new GooderReads.Collections.Texts();
    texts.fetch();

    var index = new GooderReads.Views.TextsIndexView({
      collection: texts
    });

    this._swapView(index);
  },

  textDetail: function(id) {
    var that = this;

    var text = new GooderReads.Models.Text({ id: id });

    text.fetch({
      success: function(data) {
        text.set(data.toJSON());
        var show = new GooderReads.Views.TextDetailView({
          model: text
        });

        that._swapView(show);
      }
    });
  },

  friendsIndex: function() {
    ;
  },

  authorsIndex: function() {
    ;
  },

  authorDetail: function(id) {
    var author = new GooderReads.Models.Author({ id: id });

    var that = this;
    author.fetch({
      success: function(data) {
        author.set(data.toJSON());
        var show = new GooderReads.Views.AuthorDetailView({
          model: author
        });

        that._swapView(show);
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to get author data"]);
      }
    })
  },

  _swapView: function(newView) {
    if(this._oldView) {
      if(this._oldView.removeChildViews) this._oldView.removeChildViews();
      this._oldView.remove();
    }

    this._oldView = newView;

    this.$rootEl.html(newView.render().$el);
  }
});

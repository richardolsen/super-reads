GooderReads.Routers.AppRouter = Backbone.Router.extend({
  initialize: function($rootEl, user) {
    this.$rootEl = $rootEl;
    this.user = user;

    // initialize the cached collections
    GooderReads.Collections.allTexts = new GooderReads.Collections.Texts();
  },

  routes: {
    "": "index",
    "users": "usersIndex",
    "user/:id": "userDetail",
    "user/:id/texts": "userTextsIndex",
    "texts": "textsIndex",
    "texts/genres": "textGenresIndex",
    "texts/genre/:id": "textGenreDetail",
    "text/:id": "textDetail",
    "friends": "friendsIndex",
    "authors": "authorsIndex",
    "author/:id": "authorDetail",
    "about": "about"
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
    GooderReads.Collections.allTexts.fetch({
      reset: true,
      error: function(data, response) {
        GooderReads.logErrors(["Unable to reload texts"])
      }
    });

    var index = new GooderReads.Views.TextsIndexView({
      collection: GooderReads.Collections.allTexts
    });

    this._swapView(index);
  },

  textGenresIndex: function() {
    var that = this;

    var genres = new GooderReads.Collections.Genres();
    genres.fetch({
      success: function(data) {
        genres.reset(data.models);
        var index = new GooderReads.Views.TextGenresIndexView({
          collection: genres
        });

        that._swapView(index);
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to load genre list"]);
      }
    })
  },

  textGenreDetail: function(id) {
    var that = this;

    $.ajax({
      url: "/genres/" + id + "/texts",
      type: "get",
      success: function(data) {
        var show = new GooderReads.Views.TextGenreShowView({
          model: new GooderReads.Models.Genre(data.genre),
          collection: new GooderReads.Collections.Texts(data.texts, { parse: true })
        });

        that._swapView(show);
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to load texts"]);
      }
    })
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
    var that = this;

    var friends = new GooderReads.Collections.Friends([], {
      user_id: this.user.get("id")
    });
    friends.fetch({
      success: function(data) {
        friends.set(data.models);
        var friendsView = new GooderReads.Views.FriendsIndexView({
          collection: friends
        });

        that._swapView(friendsView);
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to get friends list"]);
      }
    })
  },

  authorsIndex: function() {
    var authors = new GooderReads.Collections.Authors();

    var that = this;
    authors.fetch({
      success: function(data) {
        authors.set(data.models);
        var index = new GooderReads.Views.AuthorIndexView({
          collection: authors
        });

        that._swapView(index);
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to get authors list"]);
      }
    })
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

  about: function() {
    ;
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

GooderReads.Models.Author = Backbone.Model.extend({
  urlRoot: "/authors",

  birthDate: function() {
    var bd = new Date(this.get("birthday"));
    return moment.utc(bd).format('MMMM D, YYYY')
  },

  parse: function(attrs, options) {
    if(attrs.author) {
      var author = attrs.author;
      var texts = attrs.texts;
      var genres = attrs.genres;

      texts = new GooderReads.Collections.Texts(texts, {
        parse: true
      });
      author.texts = texts;

      genres = new GooderReads.Collections.Genres(genres, {
        parse: true
      });
      author.genres = genres;


      return author;
    } else {
      return attrs;
    }
  },

  shortBio: function() {
    if(this.get("bio")) {
      return this.get("bio").slice(0, 200);
    } else {
      return "";
    }
  },

  fullBio: function() {
    if(this.get("bio")) {
      return this.get("bio");
    } else {
      return "";
    }
  }
});

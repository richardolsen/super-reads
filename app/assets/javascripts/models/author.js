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

      texts = new GooderReads.Collections.Texts(texts, {
        parse: true
      });
      author.texts = texts;


      return author;
    } else {
      return attrs;
    }
  }
});

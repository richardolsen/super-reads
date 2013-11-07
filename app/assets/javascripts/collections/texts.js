GooderReads.Collections.Texts = Backbone.Collection.extend({
  model: GooderReads.Models.Text,
  url: "/texts",

  // parse: function(attrs, options) {
  //   attrs.forEach(function(attr) {
  //     var authors = attr.authors;
  //     attr.authors = new GooderReads.Collections.Authors(authors);
  //   });

  //   return attrs;
  // }
});

GooderReads.Models.Text = Backbone.Model.extend({
  urlRoot: "/texts",

  stateString: function() {
    var state = this.get("state");
    if(state) {
      if(state === "read") {
        return "Read";
      } else if (state === "current") {
        return "Currently Reading";
      } else {
        return "Want to Read"
      }
    }

    return "Add to Shelf";
  },

  dateAdded: function() {
    var dateCreated = new Date(this.get("created_at"));
    return moment(dateCreated).format('MMM D, YYYY')
  },

  authorList: function() {
    var list = []

    if(this.get("authors")) {
      this.get("authors").forEach(function(author) {
        list.push({
          id: author.get("id"),
          name: author.get("name")
        });
      });
    }

    return list;
  },

  isDescriptionLong: function() {
    if(this.get("description")) {
      return this.get("description").length > 200;
    } else {
      return "";
    }
  },

  shortDescription: function() {
    if(this.get("description")) {
      return this.get("description").slice(0, 200);
    } else {
      return "";
    }
  },

  fullDescription: function() {
    if(this.get("description")) {
      return this.get("description");
    } else {
      return "";
    }
  },

  parse: function(attrs, options) {
    var authors = attrs.authors;

    attrs.authors = new GooderReads.Collections.Authors(authors, { parse: true });

    return attrs;
  }
});

GooderReads.Views.TextCommentIndex = Backbone.View.extend({
  template: JST["comments/index"],

  initialize: function(options) {
    this.listenTo(this.collection, "reset", this.organizeComments);
    this.listenTo(this.collection, "reset", this.render);

    this.organizeComments(this.collection);
  },

  render: function() {
    var content = this.template({
      comments: this.comments
    });

    this.$el.html(content);

    return this;
  },

  organizeComments: function() {
    var that = this;

    this.comments = {
      // recursive function to be called within the template
      iterate: function(parentCommentId, topFormat, bottomFormat) {
        var recFunction = arguments.callee;

        if(that.comments[parentCommentId]) {
          that.comments[parentCommentId].forEach(function(comment) {
            topFormat(comment);

            // recursively iterate
            recFunction(comment.get("id"), topFormat, bottomFormat);

            bottomFormat(comment);
          });
        }
      }
    }

    this.collection.forEach(function(comment) {
      var pci = comment.get("parent_comment_id");
      if(pci === null) pci = "root";

      if(!that.comments[pci]) {
        that.comments[pci] = [];
      }

      that.comments[pci].push(comment);
    });
  }
});

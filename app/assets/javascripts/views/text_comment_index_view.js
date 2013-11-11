GooderReads.Views.TextCommentIndex = Backbone.View.extend({
  template: JST["comments/index"],

  initialize: function(options) {
    this.text = options.text;

    this.listenTo(this.collection, "reset add", this.render);

    this.organizeComments(this.collection);
  },

  render: function() {
    this.organizeComments();

    var content = this.template({
      comments: this.comments,
      text: this.text
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
  },

  events: {
    "click .reply": "showReplyForm",
    "click .comment": "showCommentForm",
    "submit .reply-form": "postComment",
    "submit .comment-form": "postComment"
  },

  showReplyForm: function(event) {
    event.preventDefault();

    var id = $(event.target).attr("data-id");
    $("#reply-form-" + id).toggleClass("hide");
  },

  showCommentForm: function(event) {
    event.preventDefault();

    $("#comment-form").toggleClass("hide");
  },

  postComment: function(event) {
    event.preventDefault();

    var that = this;

    var data = $(event.target).serializeJSON();

    var comment = new GooderReads.Models.Comment(data.comment);
    comment.save({}, {
      parse: true,
      success: function(data) {
        debugger
        that.collection.unshift(data);
        GooderReads.logSuccess("Comment added");
      },
      error: function(data, response) {
        GooderReads.logErrors(["Unable to save comment"]);
      }
    });
  }
});

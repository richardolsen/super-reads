GooderReads.Views.UserShowView = Backbone.View.extend({
  template: JST["users/show"],

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
  },

  render: function() {
    var content = this.template({
      user: this.model
    });
    this.$el.html(content);

    var $userProfile = this.$el.find("#user-profile");
    var profileView = new GooderReads.Views.UserProfileView({
      model: this.model
    });
    $userProfile.html(profileView.render().$el);

    var $textList = this.$el.find("#user-texts");
    var textView = new GooderReads.Views.UserTextsIndexView({
      model: this.model
    });
    $textList.html(textView.render().$el);

    return this;
  }
});

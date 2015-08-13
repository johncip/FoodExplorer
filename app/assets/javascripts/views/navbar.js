FoodEx.Views.NavBar = Backbone.View.extend ({
  template: JST.navbar,

  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  }
});

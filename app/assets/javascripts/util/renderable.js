/*
  Mixin for adding a common render method to BB views. Supports compositeView.
*/
FoodEx.Mixins.Renderable = {
  render: function() {
    var content = this.template(this.templateOpts());
    this.$el.html(content);

    // compositeView-specific
    this.attachSubviews && this.attachSubviews();
    this.onRender && this.onRender();

    return this;
  },

  templateOpts: function() {
    return {};
  }
};

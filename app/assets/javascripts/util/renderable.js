/*
  Mixin for adding a common render method to BB views. Supports compositeView.
*/
FoodEx.Mixins.Renderable = {
  render: function() {
    var content = this.template(this.templateOpts());
    this.$el.html(content);

    // compositeView-specific
    if (this.attachSubviews) { this.attachSubviews(); }
    if (this.onRender) { this.onRender(); }

    return this;
  },

  templateOpts: function() {
    return {};
  }
};

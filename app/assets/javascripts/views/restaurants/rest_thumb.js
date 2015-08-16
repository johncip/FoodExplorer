FoodEx.Views.RestThumb = Backbone.View.extend ({
  template: JST['restaurants/thumb.js'],
  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({ restaurant: this.model });
    this.$el.html(content);
    return this;
  }
});

FoodEx.Views.RestThumb = Backbone.CompositeView.extend ({
  template: JST['restaurants/thumb'],
  tagName: 'li',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({ restaurant: this.model });
    this.$el.html(content);
    this.onRender();
    return this;
  },

  addBadges: function () {
    if (this.model.attributes.favorite) {
      this.$el.addClass("favorite");
    }

    if (this.model.attributes.visited) {
      this.$el.addClass("visited");
    }
  },

  onRender: function () {
    this.$el.attr('data-restaurant-id', this.model.id);
    this.addBadges();
  }
});

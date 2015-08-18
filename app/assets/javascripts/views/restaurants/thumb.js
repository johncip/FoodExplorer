FoodEx.Views.RestThumb = Backbone.View.extend ({
  template: JST['restaurants/thumb'],
  tagName: 'li',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({ restaurant: this.model });
    this.$el.html(content);
    return this;
  },

  onRender: function () {
    if (this.model.attributes.favorite) {
      this.$el.addClass("favorite");
    }

    if (this.model.attributes.visited) {
      this.$el.addClass("visited");
    }

    var that = this;
    this.$el.draggable({
      scroll: true,
      revert: true,
      stack: 'li',

      drag: function(event) {
        console.log(event);
      }
    });
  }
});

FoodEx.Views.ListThumb = Backbone.View.extend ({
  template: JST['lists/thumb'],
  tagName: 'li',

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({ list: this.model });
    this.$el.html(content);
    return this;
  },

  onRender: function () {
    this.addBadges();
  },

  addBadges: function() {
    if (this.model.attributes.favorite) {
      this.$el.addClass("favorite");
    }

    if (this.model.attributes.visited) {
      this.$el.addClass("visited");
    }
  },
});

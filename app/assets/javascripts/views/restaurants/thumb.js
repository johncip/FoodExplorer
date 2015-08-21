FoodEx.Views.RestThumb = Backbone.View.extend ({
  template: JST['restaurants/thumb'],
  tagName: 'li',

  initialize: function () {
    this.$el.attr('data-listing-id', this.model.id);
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({ restaurant: this.model });
    this.$el.html(content);
    return this;
  },

  highlight: function() {
    this.$el.addClass('highlighted');

    setTimeout(function () {
      this.$el.removeClass('highlighted');
    }.bind(this), 500);
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
    this.addBadges();
  }
});

FoodEx.Views.RestThumb = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['restaurants/thumb'],
    tagName: 'li',

    initialize: function() {
      this.$el.attr('data-restaurant-id', this.model.id);
      this.listenTo(this.model, 'sync', this.render);
    },

    highlight: function() {
      this.$el.addClass('highlighted');

      setTimeout(function() {
        this.$el.removeClass('highlighted');
      }.bind(this), 500);
    },

    addBadges: function() {
      if (this.model.attributes.favorite) {
        this.$el.addClass('favorite');
      }

      if (this.model.attributes.visited) {
        this.$el.addClass('visited');
      }
    },

    onRender: function() {
      this.addBadges();
    },

    templateOpts: function() {
      return {
        restaurant: this.model
      };
    }
  }));

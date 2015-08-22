FoodEx.Views.ListThumb = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['lists/thumb'],
    tagName: 'li',

    initialize: function() {
      this.$el.attr('data-list-id', this.model.id);
      this.listenTo(this.model, 'sync', this.render);
    },

    templateOpts: function() {
      return {
        list: this.model
      };
    },

    onRender: function() {
      this.addBadges();
    },

    addBadges: function() {
      if (this.model.attributes.favorite) {
        this.$el.addClass('favorite');
      }

      if (this.model.attributes.visited) {
        this.$el.addClass('visited');
      }
    },
  }));

FoodEx.Views.SidebarItem = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {

    template: JST['lists/sidebar_item'],
    tagName: 'li',
    className: 'clearfix',

    initialize: function(options) {
      this.listenTo(this.model, 'sync', this.render);
      this.isActive = options.isActive;
    },

    templateOpts: function() {
      return {
        list: this.model
      };
    },

    onRender: function() {
      if (this.isActive) {
        this.$el.addClass('active');
      }
    }
  }));

FoodEx.Views.SidebarItem = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['lists/sidebar_item'],
    tagName: 'li',
    className: 'clearfix',

    events: {
      'drop': 'onDrop',
      'dropover': 'addPlus',
      'dropdeactivate': 'removePlus'
    },

    addPlus: function (a, b) {
      $(b.draggable).addClass('plus');
    },

    removePlus: function (a, b) {
      $(b.draggable).removeClass('plus');
    },

    initialize: function(options) {
      this.listenTo(this.model, 'sync', this.render);
      this.isActive = options.isActive;
    },

    templateOpts: function() {
      return {
        list: this.model
      };
    },

    onDrop: function(event, ui) {
      // 0. return if it's not a restaurant
      //    TODO: constrain the list thumb dragging

      // 1. get the restaurant-id
      var restId = ui.draggable.data('restaurant-id');
      var listId = this.model.id;

      var listing = new FoodEx.Models.Listing();

      listing.save({
        'list_id': listId,
        'restaurant_id': restId
      }, {
        success: function() {
          alert('copied!');
        },
        error: function (model, xhr) {
          alert('whoops!');
          console.log(xhr);
        }
      });
    },

    onRender: function() {
      this.$el.droppable({
        hoverClass: 'drop-hover',
        tolerance: 'pointer'
      });
      if (this.isActive) {
        this.$el.addClass('active');
      }
    }
  }));

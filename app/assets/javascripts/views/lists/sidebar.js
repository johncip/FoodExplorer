FoodEx.Views.Sidebar = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['lists/sidebar'],
    className: 'sidebar-container',

    initialize: function() {
      this.listenTo(this.collection, 'add', this.addSidebarItem);
      // TODO: removeSidebarItem
      this.collection.each(this.addSidebarItem.bind(this));
    },

    addSidebarItem: function(list) {
      var sidebarItem = new FoodEx.Views.SidebarItem({
        model: list,
        isActive: list === this.model
      });
      this.addSubview('ul', sidebarItem);
    }
  }));

FoodEx.Views.Sidebar = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.Orderable, {
    template: JST['lists/sidebar'],
    className: 'sidebar-container',

    orderableOpts: {
      collectionEl: 'ul'
    },

    initialize: function() {
      this.listenTo(this.collection, 'add', this.addSidebarItem);
      this.listenTo(this.collection, 'remove', this.removeSidebarItem);
      this.listenTo(this.collection, 'sort', this.sortAndRender);

      this.collection.each(this.addSidebarItem.bind(this));
    },

    removeSidebarItem: function(list) {
      this.removeModelSubview('ul', list);
    },

    sortAndRender: function () {
      this.resortSubviews();
      this.render();
    },

    addSidebarItem: function(list) {
      var sidebarItem = new FoodEx.Views.SidebarItem({
        model: list,
        isActive: list === this.model
      });
      this.addSubview('ul', sidebarItem);
    }
  }));

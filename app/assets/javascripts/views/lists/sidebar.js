FoodEx.Views.Sidebar = Backbone.CompositeView.extend ({
  template: JST['lists/sidebar'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, 'add', this.addSidebarItem);
  },

  addSidebarItem: function (list) {
    var sidebarItem = new FoodEx.Views.SidebarItem({
      model: list,
      isActive: list === this.model
    });
    this.addSubview('ul', sidebarItem);
  },

  render: function() {
    this.$el.html(this.template());
    this.collection.each(this.addSidebarItem.bind(this));
    this.onRender();
    return this;
  }
});

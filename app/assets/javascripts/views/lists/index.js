FoodEx.Views.ListsIndex = Backbone.CompositeView.extend ({
  template: JST['lists/index'],
  className: 'lists-index',

  addSidebar: function (list) {
    var sidebar = new FoodEx.Views.Sidebar({
      collection: this.collection
    });
    this.addSubview('.sidebar', sidebar);
  },

  addThumbBox: function (list) {
    var thumbBox = new FoodEx.Views.ListThumbBox({
      collection: this.collection
    });
    this.addSubview('.list-thumb-box', thumbBox);
  },

  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.addSidebar();
    this.addThumbBox();
    return this;
  },
});

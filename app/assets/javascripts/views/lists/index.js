FoodEx.Views.ListsIndex = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['lists/index'],
    className: 'content-container clearfix',

    initialize: function() {
      this.addSidebar();
      this.addThumbBox();
      this.listenTo(this.collection, 'sort', this.replaceSidebar);
    },

    addSidebar: function() {
      var sidebar = new FoodEx.Views.Sidebar({
        collection: FoodEx.lists
      });
      this.sidebar = sidebar;
      this.addSubview('.sidebar', sidebar);
    },

    addThumbBox: function() {
      var thumbBox = new FoodEx.Views.ListThumbBox({
        collection: this.collection
      });
      this.addSubview('.thumb-box', thumbBox);
    },

    replaceSidebar: function() {
      this.removeSubview('.sidebar', this.sidebar);
      this.addSidebar();
    }
  }));

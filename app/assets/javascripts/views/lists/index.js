FoodEx.Views.ListsIndex = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['lists/index'],
    className: 'content-container clearfix',

    initialize: function() {
      this.addSidebar();
      this.addThumbBox();
      this.listenTo(this.collection, 'sort', this.replaceSidebar);
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

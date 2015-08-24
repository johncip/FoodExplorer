FoodEx.Views.ListsIndex = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['lists/index'],
    className: 'content-container clearfix',

    initialize: function() {
      this.sidebar = this.addSidebar();
      this.addThumbBox();
    },

    addThumbBox: function() {
      var thumbBox = new FoodEx.Views.ListThumbBox({
        collection: this.collection
      });
      this.addSubview('.thumb-box', thumbBox);
    }
  }));

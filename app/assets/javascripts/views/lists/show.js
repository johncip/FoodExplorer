FoodEx.Views.ListShow = Backbone.CompositeView.extend ({
  template: JST['lists/show'],
  className: 'lists-index clearfix',

  addSidebar: function (list) {
    var sidebar = new FoodEx.Views.Sidebar({
      collection: FoodEx.lists,
      model: this.model
    });
    this.addSubview('.sidebar', sidebar);
  },

  addThumbBox: function (list) {
    var thumbBox = new FoodEx.Views.RestThumbBox({
      collection: this.model.restaurants(),
      model: this.model
    });
    this.addSubview('.thumb-box', thumbBox);
  },

  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.addSidebar();
    this.addThumbBox();    
    return this;
  },
});

FoodEx.Views.ListThumbBox = Backbone.CompositeView.extend ({
  template: JST['lists/thumb_box'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, 'add', this.addThumb);
  },

  addThumb: function (list) {
    var thumb = new FoodEx.Views.ListThumb({
      model: list
    });
    this.addSubview('ul', thumb);
  },

  render: function() {
    this.$el.html(this.template());
    this.collection.each(this.addThumb.bind(this));
    return this;
  }
});

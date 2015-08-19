FoodEx.Views.RestThumbBox = Backbone.CompositeView.extend({
  template: JST['restaurants/thumb_box'],

  events: {
    'sortstop': 'saveOrds'
  },

  initialize: function() {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, 'add', this.addThumb);
    this.listenTo(this.collection, 'remove', this.removeThumb);
    this.collection.each(this.addThumb.bind(this));
  },

  removeThumb: function(model) {
    this.removeModelSubview('ul', model);
  },

  addThumb: function(restaurant) {
    var thumb = new FoodEx.Views.RestThumb({
      model: restaurant
    });
    this.addSubview('ul', thumb);
  },

  render: function() {
    var content = this.template({
      list: this.model
    });
    this.$el.html(content);
    this.attachSubviews();

    this.onRender();
    return this;
  },

  onRender: function() {
    this.$('ul').sortable();
  },

  saveOrds: function() {
    var els = this.$('li');

    els.each(function(idx, el) {
      var $el = $(el);
      var id = $el.data('restaurant-id');
      var item = this.collection.getOrFetch(id);

      item.save({
        ord: idx
      });
    }.bind(this));
  }
});

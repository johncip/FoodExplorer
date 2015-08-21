FoodEx.Views.ListThumbBox = Backbone.CompositeView.extend({
  template: JST['shared/thumb_box'],

  events: {
    'sortstop': 'saveOrds'
  },

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.onRender);
    this.listenTo(this.collection, 'add', this.addThumb);
    this.collection.each(this.addThumb.bind(this));
  },

  addThumb: function (list) {
    var thumb = new FoodEx.Views.ListThumb({
      model: list
    });
    this.addSubview('ul', thumb);
  },

  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },

  onRender: function() {
    Backbone.CompositeView.prototype.onRender.call(this);
    this.$('ul').sortable();
  },

  saveOrds: function() {
    var els = this.$('li');

    els.each(function(idx, el) {
      var $el = $(el);
      var id = $el.data('list-id');
      var list = this.collection.getOrFetch(id);

      if (list.ord !== idx) {
        list.save({
          ord: idx
        });
      }
    }.bind(this));
  }
});

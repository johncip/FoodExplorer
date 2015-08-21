FoodEx.Views.ListThumbBox = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Orderable, FoodEx.Mixins.Renderable, {
    template: JST['shared/thumb_box'],

    orderableOpts: {
      dataAttr: 'list-id',
      selector: 'li'
    },

    initialize: function() {
      this.listenTo(this.collection, 'sync', this.onRender);
      this.listenTo(this.collection, 'add', this.addThumb);
      this.collection.each(this.addThumb.bind(this));
    },

    addThumb: function(list) {
      var thumb = new FoodEx.Views.ListThumb({
        model: list
      });
      this.addSubview('ul', thumb);
    },

    onRender: function() {
      Backbone.CompositeView.prototype.onRender.call(this);
      this.$('ul').sortable();
    }
  }));

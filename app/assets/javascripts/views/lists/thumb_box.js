FoodEx.Views.ListThumbBox = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Orderable, FoodEx.Mixins.Renderable, {
    template: JST['shared/thumb_box'],
    className: 'thumb-box-container',

    orderableOpts: {
      dataAttr: 'list-id',
      selector: 'li'
    },

    initialize: function(options) {
      this.listenTo(this.collection, 'sync', this.onRender);
      this.listenTo(this.collection, 'add', this.addThumb);
      this.collection.each(this.addThumb.bind(this));

      this.parentView = options.parentView;
    },

    addThumb: function(list) {
      var thumb = new FoodEx.Views.ListThumb({
        model: list
      });
      this.addSubview('ul', thumb);

      // TODO: fixme
      if (this.parentView instanceof FoodEx.Views.ListsIndex) {
        this.listenTo(list, 'change:ord',
          this.parentView.replaceSidebar.bind(this.parentView));
      }
    },

    onRender: function() {
      Backbone.CompositeView.prototype.onRender.call(this);
      this.$('ul').sortable();
    }
  }));

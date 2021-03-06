/*
  Mixin for backbone views
  (common stuff for persisting jQuery UI .sortable)

  It is assumed that models have an "ord" property, and that collections provide
  getOrFetch. Decorated views must provide a few orderableOpts, e.g.:

  orderableOpts: {
   dataAttr: 'restaurant-id',
   selector: 'li',
  },

  They can optionally override orderableModel(), if the model being ordered
  isn't a direct member of "this.collection".
    e.g. this.collection.get(id).nestedObject().

  They will probably also need to extend or override events. If events is
  overridden, be sure to give the new events object a 'sortstop' entry.
*/
FoodEx.Mixins.Orderable = {
  events: {
    'sortstop': 'saveOrds'
  },

  orderableModel: function(id) {
    return this.collection.get(id); // don't fetch
  },

  resortSubviews: function() {
    var subviews = this.subviews('ul'); // ul assumed for now
    subviews.sort(function(a, b) {
      return a.model.get('ord') - b.model.get('ord');
    });
  },

  saveOrds: function() {
    var view = this;
    var els = this.$(this.orderableOpts.selector);

    els.each(function(idx, el) {
      var id = $(el).data(this.orderableOpts.dataAttr);
      var model = view.orderableModel(id);

      if (model.get('ord') !== idx) {
        model.save({
          ord: idx
        });
      }
    }.bind(this));

    this.collection.sort();
  }
};

window.FoodEx = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Mixins: {},
  pubsub: _.extend({}, Backbone.Events),
  debug: false,

  initialize: function() {
    FoodEx.lists = new FoodEx.Collections.Lists();
    FoodEx.router = new FoodEx.Routers.Router({
      $rootEl: $('#root'),
      lists: FoodEx.lists
    });

    FoodEx.lists.fetch();

    if (FoodEx.debug) {
      FoodEx.pubsub.on('render', FoodEx.logRender);
    }
  },

  /* eslint-disable no-console */
  logRender: function(event) {
    console.log('render >>');
    console.log(event.view.el);
  }
};

FoodEx.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'welcome',
    'lists': 'index',
    'lists/:id': 'show',
    'restaurants/:id': 'restaurant'
  },

  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.lists = options.lists;

    this.$content = this.$rootEl.find('#content');
    this.$nav = this.$rootEl.find('nav');

    this.showNav();

    Backbone.history.start();
  },

  index: function() {
    this._swapContent(
      new FoodEx.Views.ListsIndex({
        collection: this.lists
      }));
  },

  welcome: function() {
    this._swapContent(
      new FoodEx.Views.Welcome()
    );
  },

  show: function(id) {
    this._swapContent(
      new FoodEx.Views.ListShow({
        model: this.lists.getOrFetch(id)
      }));
  },

  restaurant: function(id) {
    var resta = new FoodEx.Models.Restaurant({ id: id });

    this._swapContent(
      new FoodEx.Views.RestaurantShow({
        model: resta
      }));

    resta.fetch();
  },

  showNav: function() {
    var navBar = new FoodEx.Views.NavBar();
    this.$nav.html(navBar.render().$el);
  },

  _swapContent: function(view) {
    if (this._contentView) {
      this._contentView.remove();
    }
    this._contentView = view;
    this.$content.html(view.$el);
    view.render();
  }
});

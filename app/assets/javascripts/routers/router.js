FoodEx.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'lists': 'index',
    'lists/:id': 'show',
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.lists = options.lists;

    this.$content = this.$rootEl.find('#content');
    this.$nav = this.$rootEl.find('nav');

    this.showNav();

    Backbone.history.start();
  },

  index: function () {
    var view = new FoodEx.Views.ListsIndex({
      collection: this.lists
    });

    this._swapContent(view);
  },

  show: function (id) {
    var view = new FoodEx.Views.ListShow({
      model: this.lists.getOrFetch(id)
    });

    this._swapContent(view);
  },

  showNav: function () {
    var navBar = new FoodEx.Views.NavBar();
    this.$nav.html(navBar.render().$el);
  },

  _swapContent: function (view) {
    if (this._contentView) this._contentView.remove();
    this._contentView = view;
    this.$content.html(view.$el);
    view.render();
  }
});

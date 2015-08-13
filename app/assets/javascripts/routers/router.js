FoodEx.Routers.Router = Backbone.Router.extend ({
  routes: {
    '': 'index',
  },

  initialize: function ($rootEl) {
    this.$rootEl = $rootEl;
    this.$content = $rootEl.find('#content');
    this.$nav = $rootEl.find('nav');
    // this.lists = new FoodEx.Collections.Lists();
    // this.lists.fetch();
    this.showNav();

    Backbone.history.start();
  },

  showNav: function () {
    var navBar = new FoodEx.Views.NavBar();
    this.$nav.html(navBar.render().$el);
  },

  _swapContent: function (view) {
    if (this._contentView) this._contentView.remove();
    this._contentView = view;
    this.$content.html(view.render().$el);
  }
});

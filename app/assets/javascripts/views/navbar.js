FoodEx.Views.NavBar = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['navbar'],

    events: {
      'click button.logout': 'logout'
    },

    logout: function() {
      $.ajax('/session', {
        method: 'delete',

        success: function() {
          window.location.assign('/');
        }
      });
    }
  }));

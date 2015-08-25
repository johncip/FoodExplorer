FoodEx.Views.RestaurantShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['restaurants/show'],
    className: 'content-container clearfix',

    events: {
      'click .content-panel .favorite': 'toggleFave',
    },

    toggleFave: function() {
      if (this.faveChanging) {
        return;
      }
      this.faveChanging = true;

      $.ajax({
        url: this.model.url() + '/favorite',
        method: 'post',
        data: {
          favorite: !this.model.get('favorite')
        },
        success: function() {
          this.faveChanging = false;
          this.model.fetch();
        }.bind(this)
      });
    },

    faveText: {
      true: "It's one of my favorites!",
      false: 'Not my favorite.'
    },

    visitText: {
      true: "I've been there!",
      false: "Haven't been."
    },

    initialize: function() {
      this.listenTo(this.model, 'sync', this.render);
      this.addSidebar();
      this.addMapShow();

      this.faveChanging = false;
    },

    templateOpts: function() {
      return {
        restaurant: this.model
      };
    },

    addMapShow: function() {
      var mapShow = new FoodEx.Views.MapShow({
        model: this.model
      });
      this.addSubview('.map-container', mapShow);
      this.mapShow = mapShow;
    },

    onRender: function() {
      this.mapShow.initMap();
      this.updateBadges();
    },

    updateBadges: function() {
      var fave = this.model.get('favorite');
      this.$('.favorite').toggleClass('nope', !fave);
      this.$('#favorite-text').text(this.faveText[fave]);

      var visit = this.model.get('visited');
      this.$('.visited').toggleClass('nope', !visit);
      this.$('#visited-text').text(this.visitText[visit]);
    }
  }));

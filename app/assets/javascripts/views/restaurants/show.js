FoodEx.Views.RestaurantShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['restaurants/show'],
    className: 'content-container clearfix',

    events: {
      'click .content-panel .badge a': 'toggleBadge',
      'click .description p a': 'editNote'
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

    editNote: function (event) {
      var $note = $(event.target.closest('p'));
      var $parent = $note.parent();
      var $textarea = $('<textarea>' + $note.text() + '</textarea>');


      $note.remove();
      $parent.append($textarea);
    },

    // ------------------------------------------------------------
    // Badges (split into another view?)
    // ------------------------------------------------------------

    toggleBadge: function(event) {
      var name = event.target.classList[0];
      if (this.changing[name]) {
        return;
      }
      this.changing[name] = true;

      var postData = {};
      postData[name] = !this.model.get(name);

      $.ajax({
        url: this.model.url() + '/' + name,
        method: 'post',
        data: postData,
        success: function() {
          this.changing[name] = false;
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
      this.changing = {
        favorite: false,
        visited: false
      };
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

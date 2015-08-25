FoodEx.Views.RestaurantShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['restaurants/show'],
    className: 'content-container clearfix',

    events: {
      'click .content-panel .badge a': 'toggleBadge',
      'click .description p a': 'editNote'
    },

    initialize: function() {
      this.addSidebar();
      this.addMapShow();
      this.changing = {
        favorite: false,
        visited: false
      };

      this.listenTo(this.model, 'sync', this.render);
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
      var dining = this.model.dining();
      var text = dining.escape('notes');

      var $note = $(event.target.closest('p'));
      var $parent = $note.parent();
      var $link = $(event.target.closest('a'));
      var $textarea = $('<textarea>').val(text);
      var $explain = $('<p>').text('(Editing Note. Press Tab or click outside to save.)')
                             .addClass('explain');

      $note.remove();
      $parent.append($explain);
      $parent.append($textarea);

      $textarea.on('blur', function () {
        // persist
        dining.save({ notes: $textarea.val() });
        this.model.fetch();

        $textarea.remove();
        $parent.empty();
        $note.html($textarea.val());
        $parent.append($note);
        $note.append($link);
      }.bind(this));
    },

    // ------------------------------------------------------------
    // Badges (split into another view?)
    // ------------------------------------------------------------

    toggleBadge: function(event) {
      var name = event.target.classList[0];
      var dining = this.model.dining();

      if (this.changing[name]) {
        return;
      }

      this.changing[name] = true;
      var data = {};
      data[name] = !dining.get(name);

      dining.save(data, {
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

    updateBadges: function() {
      var fave = this.model.dining().get('favorite');
      this.$('.favorite').toggleClass('nope', !fave);
      this.$('#favorite-text').text(this.faveText[fave]);

      var visit = this.model.dining().get('visited');
      this.$('.visited').toggleClass('nope', !visit);
      this.$('#visited-text').text(this.visitText[visit]);
    }
  }));

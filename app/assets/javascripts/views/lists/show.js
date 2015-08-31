FoodEx.Views.ListShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['lists/show'],
    className: 'content-container clearfix',

    events: {
      'mouseenter .thumb-box li': 'onMouseenter',
      'click .description p a': 'editNote'
    },

    editNote: function (event) {
      var list = this.model;
      var text = list.escape('description');

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

        var newList = new FoodEx.Models.List({
          id: list.id,
          description: $textarea.val()
        });

        newList.save();
        this.model.fetch({ merge: true });

        $textarea.remove();
        $parent.empty();
        $note.html($textarea.val());
        $parent.append($note);
        $note.append($link);
      }.bind(this));
    },

    onMouseenter: function() {
      var $li = $(event.target).parents('li');
      this.mapShow.bounceMarker($li.data('restaurant-id'));
    },

    initialize: function() {
      this.listenTo(this.model, 'sync', this.render);
      this.addSidebar();
      this.addThumbBox();
      this.addMapShow();
    },

    addMapShow: function() {
      var mapShow = new FoodEx.Views.MapShow({
        collection: this.model.restaurants()
      });
      this.addSubview('.map-container', mapShow);
      this.mapShow = mapShow;
    },

    addThumbBox: function() {
      var thumbBox = new FoodEx.Views.RestThumbBox({
        collection: this.model.restaurants(),
        model: this.model
      });
      this.addSubview('.thumb-box', thumbBox);
      this.thumbBox = thumbBox;
    },

    templateOpts: function() {
      return {
        list: this.model
      };
    },

    onRender: function() {
      Backbone.CompositeView.prototype.onRender.call(this);
      this.mapShow.initMap();
    }
  }));

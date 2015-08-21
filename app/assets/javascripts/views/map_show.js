FoodEx.Views.MapShow = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function(options) {
    this.parentView = options.parentView;

    this._markers = {};
    this._lastZ = 0;

    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
  },

  addMarker: function(restaurant) {
    if (this._markers[restaurant.id]) {
      return;
    }
    var view = this;

    var marker = new google.maps.Marker({
      position: {
        lat: restaurant.get("lat"),
        lng: restaurant.get("lng")
      },
      map: this._map,
      title: restaurant.get('name'),
    });

    google.maps.event.addListener(marker, 'mouseover', function() {
      view.parentView.thumbBox.highlightThumb(restaurant);
    });


    this._markers[restaurant.id] = marker;
    this._bounds.extend(marker.getPosition());
    this._map.fitBounds(this._bounds);
  },

  bounceMarker: function (id) {
    var marker = this._markers[id];
    marker.setAnimation(google.maps.Animation.BOUNCE);
    setTimeout(function () { marker.setAnimation(null); }, 700);
  },

  removeMarker: function(restaurant) {
    var marker = this._markers[restaurant.id];
    marker.setMap(null);
    delete this._markers[restaurant.id];
  },

  initMap: function() {
    if (this._map) return;

    var mapOptions = {
      center: {
        lat: 37.746972,
        lng: -122.410399
      },
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
    this._bounds = new google.maps.LatLngBounds();
    this.collection.each(this.addMarker.bind(this));
  }
});

FoodEx.Views.MapShow = Backbone.View.extend({
  className: 'map-show-container',
  maxAutoZoom: 16,

  attributes: {
    id: 'map-canvas'
  },

  initialize: function() {
    this._markers = {};
    this._lastZ = 0;

    if (this.collection) {
      this.listenTo(this.collection, 'add', this.addMarker);
      this.listenTo(this.collection, 'remove', this.removeMarker);
    }

    if (this.model) {
      this.listenTo(this.model, 'sync', this.addMarker);
    }
  },

  addMarker: function(restaurant) {
    if (this._markers[restaurant.id]) {
      return;
    }

    var marker = new google.maps.Marker({
      position: {
        lat: restaurant.get('lat'),
        lng: restaurant.get('lng'),
        optimized: false
      },
      map: this._map,
      title: restaurant.get('name'),
    });

    google.maps.event.addListener(marker, 'mouseover', function() {
      FoodEx.pubsub.trigger('marker:hover', restaurant);
    });

    this._markers[restaurant.id] = marker;
    this._bounds.extend(marker.getPosition());
    this._map.fitBounds(this._bounds);

    if(this._map.getZoom() > this.maxAutoZoom) {
      this._map.setZoom(this.maxAutoZoom);
    }
  },

  bounceMarker: function(id) {
    var marker = this._markers[id];
    if (marker === undefined) { return; }

    marker.setAnimation(google.maps.Animation.BOUNCE);
    setTimeout(function() {
      marker.setAnimation(null);
    }, 700);
  },

  removeMarker: function(restaurant) {
    var marker = this._markers[restaurant.id];
    marker.setMap(null);
    delete this._markers[restaurant.id];
  },

  initMap: function() {
    if (this._map) { return; }

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

FoodEx.Views.MapShow = Backbone.View.extend({
  className: 'map-show-container',
  maxZoom: 16,

  attributes: {
    id: 'map-canvas'
  },

  initialize: function() {
    if (this.collection) { // list show
      this.listenTo(this.collection, 'add', this.addMarker);
      this.listenTo(this.collection, 'remove', this.removeMarker);
    }

    if (this.model) { // restaurant show
      this.listenTo(this.model, 'sync', this.addMarker);
    }

    $(window).on('resize', this.forceInitMap.bind(this));
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

    this._markers[restaurant.id] = marker;
    this.placeMarker(marker);

    google.maps.event.addListener(marker, 'mouseover', function() {
      FoodEx.pubsub.trigger('marker:hover', restaurant);
    });
  },

  placeMarker: function (marker) {
    this._bounds.extend(marker.getPosition());
    this._map.fitBounds(this._bounds);

    if(this._map.getZoom() > this.maxZoom) {
      this._map.setZoom(this.maxZoom);
    }
  },

  removeMarker: function(restaurant) {
    var marker = this._markers[restaurant.id];
    marker.setMap(null);
    delete this._markers[restaurant.id];
  },

  bounceMarker: function(id) {
    var marker = this._markers[id];
    if (marker === undefined) { return; }

    marker.setAnimation(google.maps.Animation.BOUNCE);
    setTimeout(function() {
      marker.setAnimation(null);
    }, 700);
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

    this._markers = {};
    this._map = new google.maps.Map(this.el, mapOptions);
    this._bounds = new google.maps.LatLngBounds();
    this.collection.each(this.addMarker.bind(this));
  },

  forceInitMap: function () {
    this._map = null;
    this.initMap();
  }
});

FoodEx.Views.MapShow = Backbone.View.extend ({
  attributes: {
    id: "map-canvas"
  },

  initialize: function () {
    this._markers = {};

    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);

    this.collection.each(this.addMarker.bind(this));
  },

  addMarker: function (restaurant) {
    if (this._markers[restaurant.id]) { return; }
    var view = this;

    var marker = new google.maps.Marker({
      position: {
        lat: restaurant.escape("lat"),
        lng: restaurant.escape("lng")
      },
      map: this._map,
      title: restaurant.get('name')
    });
  },

  removeMarker: function (restaurant) {
    var marker = this._markers[restaurant.id];
    marker.setMap(null);
    delete this._markers[restaurant.id];
  },

  initMap: function () {
    if (this._map) return;

    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167 },
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
  }
});

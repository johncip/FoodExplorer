# Phase 2: Backbone Views, Plus Notes and Comments

## Rails
### Models
+ Table: ListComments

### Controllers
Api::ListsController (create, destroy, index, show)
Api::RestaurantsController (create, destroy, show, update)

### Views

## Backbone
### Models
* List (parses nested `restaurants` association)
* Restaurant

### Collections
* Lists
* Restaurants

### Views
* ListForm
* ListShow (composite view, contains RestaurantsIndex subview)
* RestaurantsIndex (composite view, contains RestaurantsIndexItem subviews)
* RestaurantsIndexItem
* RestaurantShow

## Gems/Libraries
Backbone
SerializeJSON
jQuery

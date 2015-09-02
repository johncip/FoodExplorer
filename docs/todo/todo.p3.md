### Feature: Search & Add Restaurants
- [ ] Search show view
- [ ] Search results
- [ ] Play with Yelp search API
- [ ] Navbar search
- [ ] Pagination

### UX Fixes
- [x] Annotate site
- [x] Welcome page
- [ ] Different thumbs for lists
- [ ] Constrain list thumb dragging

### Feature: Restaurant Notes
- [x] generate model & migration
- [x] fix migration
- [x] generate api controller
- [x] migrate
- [x] add model validations
- [x] add associations
- [x] create backbone model & collection
- [x] add to API & parse method
- [x] add to templates
- [x] editable

### Front End
- [x] Fix thumb-box margin
- [x] Fix log out twice bug
- [ ] Use Bootstrap
- [ ] Random background for sign-in

### Feature: Google Maps
- [x] {db} Promote latitude & longitude
- [x] Get and use API key
- [x] Add map
- [x] Add markers
- [x] Fit map to markers
- [x] Fix map re-render bug
- [x] Fix click-too-fast bug
- [x] Highlight marker on thumb hover
- [x] Highlight thumb on marker hover

### Fix & Refactor
- [x] Use correct onRender pattern
- [x] Factor out common code in Backbone views
- [x] Move logout function into navbar view
- [x] Factor out getOrFetch
- [x] Refactor CSS (make selectors more generic)
- [x] Factor out Dining + flag pattern
- [x] Google maps markers resize bug
- [x] Make sidebar view a mixin
- [x] Don't use #/ in links

### Feature: Restaurant show page
- [x] Backbone view
- [x] Backbone template
- [x] Backbone route & action
- [x] Fix thumbnail links
- [x] Include map & add marker
- [x] Display visited & favorited
- [x] Include Yelp stuff
- [x] Style
- [x] Toggle visited & favorited

### Feature: Drag-and-drop
- [x] Sortable Restaurant thumbs
  - [x] Fix bug: why is the restaurant collection emptying?
  - [x] Fix bug: sortable + rendering race condition
  - [x] Controller update action
  - [x] Include listing in restaurant JSON
  - [x] Default scope needs to be sorted
  - [x] Don't make unnecessary PUT requests
- [x] Sortable List thumbs
  - [x] Use generic sortable mixin
- [x] Draggable
  - [x] Change membership

### Deployment & Code Quality
- [x] Git hook for Rubocop
- [x] Use rails cops
- [x] Incorporate JS style checking
- [x] Fix duplicate logging

### Back End
- [x] Fix url-encoding issue (store yid unencoded & change lookup)
- [x] Reduce number of queries
  - [x] Lists Index
  - [x] Listings Index
  - [x] List Show
  - [x] Restaurants Index
  - [x] Restaurant Show
  - [x] Listing Show
- [x] Reduce number of renders
- [x] Fix 'ambiguous ord' bug
- [x] Don't delete restaurants ever

### Next
- [ ] Toggle visited
- [ ] Toggle favorited
- [ ] Center thumbs in padding
- [ ] Search & add restaurants...
- [ ] "Be your own" / welcome page
- [ ] Phase 4 (Notifications)
- [ ] Phase 5 (Friends)

### Feature: Search & Add Restaurants
- [ ] Play with Yelp search API
- [ ] Search view
- [ ] Results view
- [ ] Pagination

### Front End
- [x] Fix thumb-box margin
- [ ] Fix log out twice bug
- [ ] Use Bootstrap
- [ ] Random background for sign-in
- [ ] Different thumbs for lists
- [ ] Center thumbs in padding

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
- [ ] Toggle visited & favorited

### Feature: Restaurant Notes
- [ ] generate model & migration
- [ ] fix migration
- [ ] generate api controller
- [ ] migrate
- [ ] add model validations
- [ ] add associations
- [ ] create backbone model & collection
- [ ] add to API & parse method
- [ ] add to templates
- [ ] style

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

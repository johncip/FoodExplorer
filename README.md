# FoodExplorer

[Heroku link][heroku]

[heroku]: http://food-explorer.herokuapp.com/

## Minimum Viable Product
FoodExplorer is a restaurant-themed blend of Pinterest and Goodreads built on
Rails and Backbone. Users can:

- [x] Create accounts
- [x] Create sessions (log in)
- [x] Create lists of restaurants
- [ ] Find restaurants (using Yelp API) to add to lists
- [ ] Attach notes to restaurants
- [ ] View own lists + others' shared lists
- [ ] Comment on others' lists
- [ ] Filter lists quickly using a responsive UI
- [ ] Create "smart" lists that update dynamically
- [ ] Custom list URLs / Share link button

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, List Creation (~1 day)
I will implement user authentication using the pattern we learned at App
Academy. I will also create seed data and push the app to Heroku. At this
point, users will be able to log in and create and update named list of
restaurants.

[Details][phase-one]

### Phase 2: Notes and Comments (~1 day)
This phase will involve building out the front-end skeleton using Backbone.
Besides the phase 1 features, users will be able to comment on lists and attach
notes to the restaurants in their own lists.

[Details][phase-two]

### Phase 3: Yelp API and Draggable icons (~2 days)
During this phase I will add the ability to search for restaurants using the
Yelp API. Users will then be able to quickly drag those search results into
their lists. Users will also be able to reorder restaurants by dragging them.

[Details][phase-three]

### Phase 4: Filters (~2 days)
At the end of Phase 4, users will be able to filter their lists quickly using
criteria similar to what you find on Yelp (open now, nearby, style of food)
but with a simpler set of options that can be accessed from a drop-down filter
panel, similar to wallhaven.cc. Users will also be able to create and save smart
lists, which are the result of filters run on a list or a combination of lists.

[Details][phase-four]

### Phase 5: Links and Email (~1 day)
Phase 5 is set aside for for implementing a service for generating unique, short
urls for each publicly-shared list. URLS will live at the root of the site, or
close to it, e.g. food-explorer.com/X4gLy2. At the end of this phase the site
will also be able to email users after sign-up, and users will be able to share
lists by sending an email directly from the site.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] Add other users as friends
- [ ] Log in and find friends with Facebook
- [ ] View a feed of friends' activities
- [ ] Set list view/edit permission to "friends only"
- [ ] Invite friends to edit lists

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md

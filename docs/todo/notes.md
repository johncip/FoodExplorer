# Notes

* if you use postgres, rails gives you extra datatypes

### Questions
* what should I do with a user's list contributions when they're destroyed?
  * probably delete if it's their list and change the contributor if it's not

### Commands
* rake secret
* rake -T
* list databases in psql: \\list
* pg_dump -U john FoodExplorer_development -f backup.sql
* figaro heroku:set -e production
* rubocop -FD (fail fast & show cop name)
* rubocop --auto-gen-config
* git stash show -p stash@{0}
* git branch -m old new

### Yelp
* https://www.yelp.com/developers/api_console
* https://www.yelp.com/developers/documentation/v2/overview

### Reading
* https://github.com/bbatsov/rails-style-guide#macro-style-methods
* https://devcenter.heroku.com/articles/rails-integration-gems
* https://devcenter.heroku.com/articles/ruby-default-web-server
* http://help.papertrailapp.com/kb/configuration/controlling-verbosity/
* http://movingfast.io/articles/environment-variables-considered-harmful/
* https://bearmetal.eu/theden/how-do-i-know-whether-my-rails-app-is-thread-safe-or-not/
#### Wakefulness
* https://coderwall.com/p/u0x3nw/avoid-heroku-idling-with-new-relic-pings
* http://www.crowdco.de/tutorials/19
* http://albertogrespan.com/blog/heroku-scheduler-and-rails-rake-tasks/

### Ideas & Later phases
 - list view vs thumbs view
 - use badges for notifications
 - understand 12 factor app rationale
 - "Invitations" / sharing model
 - cool splash page (bubbles?)
 - configurable start page (or use last viewed list)
 - compositeView.placeSubview (or search from parent)

4 Leaf views: sidebar_item, list/thumb, resta/thumb, navbar
5 Composite views: sidebar, list/index, list/show, list/thumb_box, resta/thumb_box

I pulled sync renders out of restaurant & list thumb-box views

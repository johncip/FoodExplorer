/*
  View mixin for addSidebar.

  It is assumed that the decorated view extends CompositeView
  (since the sidebar itself is a subview).

  Remember to call addSidebar() in the parent view and to make room
  for the sidebar in the template.
*/
FoodEx.Mixins.WithSidebar = {
  addSidebar: function() {
    var sidebar = new FoodEx.Views.Sidebar({
      collection: FoodEx.lists,
      model: this.model
    });

    this.addSubview('.sidebar', sidebar);

    return sidebar;
  },
};

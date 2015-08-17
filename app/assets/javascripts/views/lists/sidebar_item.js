FoodEx.Views.SidebarItem = Backbone.View.extend ({
  template: JST['lists/sidebar_item'],
  tagName: 'li',
  className: 'clearfix',

  initialize: function (options) {
    this.listenTo(this.model, 'sync', this.render);
    this.isActive = options.isActive;
  },

  render: function() {
    var content = this.template({
      list: this.model
    });
    this.$el.html(content);
    return this;
  },

  onRender: function () {
    if (this.isActive) {
      this.$el.addClass('active');
    }
  }
});

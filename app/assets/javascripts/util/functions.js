function logout() {
  $.ajax('/session', {
    method: 'delete',

    success: function () {
      window.location.assign('/');
    }
  });
}

Array.prototype.removeElement = function(el) {
  this.splice(this.indexOf(el), 1);
};

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require rails-ujs

import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "@popperjs/core"

document.addEventListener('ajax:success', function(event) {
  var xhr = event.detail[0];
  var data = xhr.responseText;

  // Ajoutez ici tout code supplémentaire nécessaire après la suppression du bookmark

  // Rafraîchit la page actuelle
  window.location.reload();
});

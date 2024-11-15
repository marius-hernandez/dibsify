// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import 'flowbite';
import "@hotwired/turbo-rails"
import "trix"
import "@rails/actiontext"

window.document.addEventListener('turbo:load', (event) => {
    // trigger flowbite events
    window.document.dispatchEvent(new Event("DOMContentLoaded", {
      bubbles: true,
      cancelable: true
    }));
});

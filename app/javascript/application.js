// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
//= require jquery
//= require jquery_ujs


// Acces to the current class
const element = document.getElementById("status").querySelectorAll(".status-color");
orange = element[2].style.backgroundColor = "orange";
// console.log(orange);

// if Statement to change the current_class to the new one

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";

require("jquery")
require("@nathanvda/cocoon")

Rails.start()
Turbolinks.start()
ActiveStorage.start()



jQuery(document).on('turbolinks:load', function(){

$('input[name="commit"]').on('click', function() {

  $(".close").click();
});




});


jQuery(document).on('turbolinks:load', function() {
  $('.add_fields').on('click', function() {
    setTimeout(function() {
      append_option();
    }, 300);
  });
});

function append_option() {
  var selectElement = $('.select_list');
  selectElement.empty();

  $.each(lists, function(index, option) {
    selectElement.append($('<option>', {
      value: option.value,
      text: option.text
    }));
  });
}
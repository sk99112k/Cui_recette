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


$(document).on('turbolinks:load', function() {
  // $('.add_fields').on('click', function() {
  //   // setTimeout(function() {
  //   //   append_option();
  //   // }, 300);
  // });
  $('#list_storage-forms').on('cocoon:before-insert', function(e, insertedItem, originalEvent) {

    // Cocoonの新規追加時の追加されたエレメントのIDを取得
    var addSelectId = insertedItem.find('select').attr('id')

    // Cocoonの新規追加時にセレクトボックス内部をデータベースから取得し上書き
    $.ajax('/ajax_list',
      {
        type: 'get',
        dataType: 'json'
      }
    )
    // 検索成功時にはページに結果を反映
    .done(function(data) {

      // 要素を一度空にする
      $(`#${addSelectId}`).empty();

      // 見出しの追加
      $(`#${addSelectId}`).append($('<option>', {
        text: '食材を選択'
      }));

      // データベースから取得した情報をセレクトボックスに反映
      $.each(data, function(index, option) {
        $(`#${addSelectId}`).append($('<option>', {
          value: option.value,
          text: option.text
        }));
      });


    })
    // 検索失敗時には、その旨をダイアログ表示
    .fail(function() {
      window.alert('正しい結果を得られませんでした。');
    });

  });
});

// function append_option() {
//   var selectElement = $('.select_list');
//   selectElement.empty();

//   selectElement.append($('<option>', {
//     text: '食材を選択'
//   }));

//   $.each(lists, function(index, option) {
//     selectElement.append($('<option>', {
//       value: option.value,
//       text: option.text
//     }));
//   });
// }
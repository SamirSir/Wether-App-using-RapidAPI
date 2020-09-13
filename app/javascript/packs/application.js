// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// chart 
require("chartkick")
require("chart.js")


// select2 search requirement
import $ from 'jquery'
require("select2")
require('select2/dist/css/select2.css')

// custom js file 
require("packs/custom/covid19")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)



$(document).ready(function () {
   
    $(".search_country").select2({
        allowClear: true,
        minimumInputLength: 3,
        placeholder: "Search ...",
        delay: 2000,
    });

    // for searching from the large database:

    // function getUrl() {
    //   if ($("#country").select2("isOpen")) {
    //       return "/covid19_all_country_path";
    //   }
    // }

    // $(".remoteSelect2").select2({
    //   allowClear: true,
    //   minimumInputLength: 2,
    //   placeholder: "Search ...",
    //   tags: [],
    //   ajax: {
    //     url: function () {
    //       return getUrl();
    //     },
    //     delay: 400,
    //     dataType: "json",
    //     type: "GET",
    //     quietMillis: 50,
    //     data: function (params) {
    //       var query = {
    //         val: params.term,
    //         type: "public",
    //       };
    //       return query;
    //     },
    //     processResults: function (data) {
    //       return {
    //         results: $.map(data, function (item) {
    //           return {
    //             text: item.label,
    //             id: item.value,
    //           };
    //         }),
    //       };
    //     },
    //   },
    // });
    // search using select2 opeariton end




    // end of ready function
  });
/******/ (() => { // webpackBootstrap
/*!**************************************!*\
  !*** ./resources/delivery/js/api.js ***!
  \**************************************/
var baseUrl = 'https://fastdelivery-admin.lojadodesenvolvedor.com/api/v1';
$(function () {
  $.ajax("".concat(baseUrl, "/config")).done(function (data) {
    return console.log(data);
  });
});
/******/ })()
;
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
$('#query').typeahead
name: "residential"
remote: "/residentials/autocomplete?query=%QUERY"

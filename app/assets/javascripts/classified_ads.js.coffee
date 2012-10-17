# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery (j$) ->
  initQuantityChoices()

initQuantityChoices = ->
  $('#quantity_choices input').click -> populateQuantity($(this).val())
  $('#quantity_choices').show()

populateQuantity = (quantity) ->
  $('#classified_ad_quantity').val(quantity)

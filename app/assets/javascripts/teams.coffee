# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Listen on an element
# Listen on document
$(document).on "fields_added.nested_form_fields", (event, param) ->
  switch param.object_class
    when "player"
      console.log "Player object added"
    else
      console.log "INFO: Fields were successfully added, callback not handled."

# Trigger button click programmatically and pass an object `{hello: 'world'}`
# $('.add_nested_fields_link').trigger('click', [{hello: 'world'}])

# Listen for the event
$(document).on "fields_added.nested_form_fields", (event, param) ->
  console.log param.additional_data #=> {hello: 'world'}
$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && keyCode == 13
      e.preventDefault()
      $(this).submit()

$("#new_message").on "submit", (e) ->
  e.preventDefault()

  chatroom_id = $("[data-behavior='messages']").data("chatroom_id")
  body        = $("#message_body")

  App.chatrooms.send_message(chatroom_id, body.val())

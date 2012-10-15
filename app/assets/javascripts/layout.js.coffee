jQuery ($) ->
  $mainNav2 = $("ul.nav")
  $mainNav2.append "<li id='magic-line-two'></li>"
  $magicLineTwo = $("#magic-line-two")
  $magicLineTwo
    .width($(".nav .active").parent().width())
    .height($mainNav2.height())
    .css("background-color", $(".nav .active").data("highlight-color"))
    .css("left", $(".nav a.active").position().left)
    .data("origLeft",  $(".nav a.active").position().left)
    .data("origWidth", $magicLineTwo.width())
    .data("origColor", $(".nav .active").data("highlight-color"))

  $(".nav a").hover ->
    $el = $(this)
    leftPos = $el.position().left
    newWidth = $el.parent().width()
    $magicLineTwo.stop().animate
      left: leftPos
      width: newWidth
      backgroundColor: $el.data("highlight-color")

  , ->
    $magicLineTwo.stop().animate
      left: $magicLineTwo.data("origLeft")
      width: $magicLineTwo.data("origWidth")
      backgroundColor: $magicLineTwo.data("origColor")

  # Kick IE into gear
  $(".nav .active a").mouseenter()

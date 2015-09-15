
ready = ->
  $('.dropdown-toggle').dropdown()

$(document).ready(ready)
$(document).on('page:load', ready)
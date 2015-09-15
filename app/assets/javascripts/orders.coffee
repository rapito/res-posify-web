closeOrder = ->
  $('#order_payed')[0].checked = true
  $('#order_payed').val(1);

ready = ->
  $('#order_foods').bind 'change', ->
    sum = 0.0
    discount = parseFloat $('#price-discount').val()
    discount = if discount <= 0 then 1 else discount
    taxes = parseFloat $('#price-taxes').val() * 0.01

    (sum += parseFloat(option.innerHTML.split('$')[1]) if option.selected) for option in this.options

    net = (sum * discount * (1 + taxes))
    $('#price-brute').html('$' + sum)
    $('#price-net').html('$' + net)

    $('#order_brute').val(sum)
    $('#order_net').val(net)

  #    Price label values assignment
  $('#price-brute').html('$' + $('#order_brute').val())
  $('#price-net').html('$' + $('#order_net').val())

$(document).ready(ready)
$(document).on('page:load', ready)
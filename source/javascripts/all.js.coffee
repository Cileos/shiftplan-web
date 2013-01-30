$ ->
  $('#navigation_flyout').click ->
    $(this).siblings('#navigation_list').toggle()

  $('#switch_prices').click ->
    $(this).parents('.pricing').toggleClass('in-dollars')
    false

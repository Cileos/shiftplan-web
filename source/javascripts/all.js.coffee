$ ->
  $('#navigation_flyout').click ->
    $(this).siblings('#navigation_list').toggle()

  $('#switch_prices').click (event) ->
    event.preventDefault()

    if $(this).hasClass('in-eur')
      $(this).text("Show prices in EUR")
    else
      $(this).text("Show prices in USD")

    $(this).parents('.pricing').toggleClass('in-dollars')
    $(this).toggleClass('in-eur')

$ ->
  $('#navigation_flyout').click ->
    $(this).siblings('#navigation_list').toggle()

  $('#switch_prices').click (event) ->
    event.preventDefault()

    if $(this).hasClass('in-eur')
      $(this).text $(this).closest("p").data("in-eur")
    else
      $(this).text $(this).closest("p").data("in-usd")

    $(this).closest('.pricing').toggleClass('in-dollars')
    $(this).toggleClass('in-eur')

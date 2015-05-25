$ ->
  wickerMagic = new ScrollMagic.Controller()
  onEnter = ->
    $('#welcome_5').addClass('spotlight')
  onLeave = ->
    $('#welcome_5').removeClass('spotlight')
  new ScrollMagic.Scene({
    triggerElement: '#weclome_5',
    duration: 1650
    offset: 150
  }).on('enter',onEnter).on('leave', onLeave).addTo(wickerMagic)

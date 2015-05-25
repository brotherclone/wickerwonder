$ ->
  wickerMagic = new ScrollMagic.Controller()
  new ScrollMagic.Scene({
    triggerElement: '#wicker_situations'
  }).setClassToggle("#wicker_situations", "testing").addTo(wickerMagic)

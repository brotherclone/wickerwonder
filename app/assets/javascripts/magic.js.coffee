$ ->
  navitems = ['welcome','characters','situations','info','materials']
  i = 0
  wickerMagic = new ScrollMagic.Controller()
  while i < navitems.length
    trignm = '#wicker_' + navitems[i]
    navnm = '#wicker_' + navitems[i] + '_nav'
    new (ScrollMagic.Scene)(triggerElement: trignm, offset: 200, duration: 100).setClassToggle(navnm,'active').addTo wickerMagic
    i++
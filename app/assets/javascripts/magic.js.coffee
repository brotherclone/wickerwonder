$ ->
  navitems = ['welcome','characters','situations','info','materials']
  wickerMagic = new ScrollMagic.Controller()
  i = 0
  while i < navitems.length
    trignm = '#wicker_' + navitems[i]
    navnm = '#wicker_' + navitems[i] + '_nav'
    new (ScrollMagic.Scene)(triggerElement: trignm, offset: 10).setClassToggle(navnm, 'active').addIndicators().addTo wickerMagic
    i++
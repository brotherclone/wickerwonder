wholeGangEnter = ->
  $('#wicker_welcome').addClass('spotlight')
  $('#welcome_logo').addClass('first-pos')
  $('#welcome_subtitle').addClass('first-pos')
  $('#welcome_credits').addClass('first-pos')
  $('#welcome_message').addClass('first-pos')
wholeGangLeave = ->
  $('#wicker_welcome').removeClass('spotlight')
  $('#welcome_logo').removeClass('first-pos')
  $('#welcome_subtitle').removeClass('first-pos')
  $('#welcome_credits').removeClass('first-pos')
  $('#welcome_message').removeClass('first-pos')
charactersEnter = ->
  $('#characters-title').addClass('first-pos')
charactersLeave = ->
  $('#characters-title').removeClass('first-pos')
situationsEnter = ->
  $('#situations-title').addClass('first-pos')
situationsLeave = ->
  $('#situations-title').removeClass('first-pos')
$ ->
  wickerMagic = new ScrollMagic.Controller()
  navitems = ['welcome','characters','situations','info','materials']
  i = 0
  while i < navitems.length
    trignm = '#wicker_' + navitems[i]
    navnm = '#wicker_' + navitems[i] + '_nav'
    new (ScrollMagic.Scene)(triggerElement: trignm, offset: 0, duration: '100%').setClassToggle(navnm,'active').addTo wickerMagic
    i++
  new(ScrollMagic.Scene)(triggerElement:'#welcome_visual', offset: -40, duration:'80%').on('enter',wholeGangEnter).on('leave', wholeGangLeave).addTo wickerMagic
  new(ScrollMagic.Scene)(triggerElement:'#characters-slider', offset: 20, duration:'80%').on('enter',charactersEnter).on('leave', charactersLeave).addTo wickerMagic
  new(ScrollMagic.Scene)(triggerElement:'#situations-slider', offset: 20, duration:'80%').on('enter',situationsEnter).on('leave', situationsLeave).addTo wickerMagic
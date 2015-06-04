$ ->
  $('#sidenav').sidebar('setting', { dimPage: false, scrollLock: true });
  $('#trigger').click ->
    $('#sidenav').sidebar('toggle')
  $(document).on 'click', 'a[href^=\'#\']', (e) ->
  id = $(this).attr('href')
  if $(id).length > 0
    e.preventDefault()
    controller.scrollTo id
    if window.history and window.history.pushState
      history.pushState '', document.title, id
  return

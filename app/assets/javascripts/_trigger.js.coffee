$ ->
  $('#sidenav').sidebar('setting', { dimPage: false, scrollLock: true });
  $('#trigger').click ->
    $('#sidenav').sidebar('toggle')
  $('#sidenav a').smoothScroll();
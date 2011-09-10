DEBUG = false
like_html =
  """
  <iframe id="f183b5634" name="f2f134556" scrolling="no" style="border-width: initial; border-color: initial; overflow-x: hidden; overflow-y: hidden; width: 450px; height: 24px; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; border-width: initial; border-color: initial; " title="Like this content on Facebook." class="fb_ltr" src="http://www.facebook.com/plugins/like.php?api_key=113869198637480&amp;channel_url=http%3A%2F%2Fstatic.ak.fbcdn.net%2Fconnect%2Fxd_proxy.php%3Fversion%3D3%23cb%3Df2acb0e464%26origin%3Dhttp%253A%252F%252Fdevelopers.facebook.com%252Ff1dd237ed4%26relation%3Dparent.parent%26transport%3Dpostmessage&amp;extended_social_context=false&amp;href=getfaceoff.com&amp;layout=standard&amp;locale=en_US&amp;node_type=link&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=450"></iframe>
  """

replaced = null

preload = (list) ->
  for src in list
    $('<img/>')[0].src = src

if DEBUG
  p = (o) -> console.log(o)
else
  p = ->

$ () ->
  preload ["/images/mark.png"]
  demo = $("#mark .like")
  demo.click () ->
    return if replaced
    $("#mark").addClass("faceon")
    $(".button",demo).replaceWith $(like_html)
    replaced = true
  mpq.track_links(demo,"demo")
  mpq.track_links("#download","downlaod")
  mpq.track_links("#follow","follow")
  mpq.track_links("#repo","repo")


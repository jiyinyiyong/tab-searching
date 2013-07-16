
openWindow = ->
  popup =
    type: 'popup'
    url: 'build/select.html'
    left: 600
    width: 400
    height: 600
    focused: yes
  chrome.windows.create popup, (win) ->
    win.alwaysOnTop = yes

chrome.runtime.onMessage.addListener (req, sender, msg) ->
  if req.word is 'open' then openWindow()

chrome.browserAction.onClicked.addListener (tab) ->
  openWindow()
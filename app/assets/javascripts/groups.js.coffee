# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  userAgentMatch = (matchExp)->
    navigator.userAgent.match matchExp

  getDeviceType = ->
    if userAgentMatch(/iPad/i)
      "ipad"
    else if userAgentMatch(/iPhone|iPod/i)
      "iphone"
    else if userAgentMatch(/Android|HTC.+WebKit/i)
      "android"
    else
      "desktop"

  displayGoogleMarketButton = ->
    appButton = $("#android_store_btn")
    appButton.attr("href", "LINK-TO-APP")
    appButton.removeClass("hidden")

  displayAppStoreButton = ->
    appButton = $("#iphone_store_btn")
    appButton.attr("href", "LINK-TO-APP")
    appButton.removeClass("hidden")

  displayGoToApp = (device)->
    $("#go_to_app_btn").removeClass("hidden")

  deviceType = getDeviceType()

  switch deviceType
    when "ipad", "iphone"
      displayGoToApp(deviceType)
      displayAppStoreButton()
    when "android"
      displayGoToApp(deviceType)
      displayGoogleMarketButton()
    else
      displayAppStoreButton()
      displayGoogleMarketButton()





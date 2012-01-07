class Container
  # constructor: () ->
    
  index: () ->
    @standardIframe()
    
  index2: () ->
    @standardIframe()
    
  index4: () ->
    jQuery ->
      $('iframe').iframeAutoHeight
        debug: true
        minHeight: 480
        
  index5: () ->
    jQuery ->
      $('#xsmall-iframe').iframeAutoHeight
        debug: true
        callback: (callbackObject) -> console.debug "CallBack: height='#{callbackObject.newFrameHeight}' / iframe-id='#{jQuery(this).attr('id')}'"

      $('#small-iframe').iframeAutoHeight
        debug: true
        callback: (callbackObject) -> console.debug "CallBack: height='#{callbackObject.newFrameHeight}' / iframe-id='#{jQuery(this).attr('id')}'"

      $('#medium-iframe').iframeAutoHeight
        debug: true
        callback: (callbackObject) -> console.debug "CallBack: height='#{callbackObject.newFrameHeight}' / iframe-id='#{jQuery(this).attr('id')}'"

  index6: () ->
    jQuery ->
      $('iframe').iframeAutoHeight
        debug: true
        minHeight: 480
        callback: (callbackObject) -> console.debug "load callback"

  standardIframe: () ->
    jQuery ->
      $('iframe').iframeAutoHeight
        debug: true
        minHeight: 180  

# ==============================
# bind to the window
window.App ?= {}
window.App.Container = Container
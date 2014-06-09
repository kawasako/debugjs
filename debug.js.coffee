class ImageChecker
  constructor: (target)->

  run: ->
    @$images = $('img')
    @$images.each ->
      $this = $(@)
      src = $this.attr('src')
      img = new Image
      img.src = src
      w = @width
      h = @height
      width = img.width
      height = img.height
      if width != w or height != h
        @style.outline = '5px solid red'
        console.log 'ERROR: ' + src + '(' + w + 'x' + h + ') -> (' + width + 'x' + height + ')'
$ ->
  window.ImageChecker = new ImageChecker('body')
  window.addEventListener('load', ->
    window.ImageChecker.run()
  )

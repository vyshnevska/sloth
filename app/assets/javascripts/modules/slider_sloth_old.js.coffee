# class Sloth.Slider
#   constructor: ($el) ->
#     @$sliderEl      = $el
#     @$slides        = @$sliderEl.find('.slide')
#     @$mainContainer = @$sliderEl.find('#slides ul')
#     # rotation speed and timer
#     @elm            = @$mainContainer.find(':first-child').prop("tagName")
#     @item_width     = @$mainContainer.width();
#     @speed          = 5000;
#     @prevButton     = 'prev'
#     @nextButton     = 'next'
#     @run            = setInterval(rotate, @speed);



#   init: ->
#     # set the slides to the correct pixel width
#     @$slides.width(@item_width)
#     @$mainContainer.parent().width(@item_width)

#     #set the slides container to the correct total width
#     @$mainContainer.width(slides.length * @item_width)
#     @$mainContainer.find(@elm + ':first').before(@$mainContainer.find(@elm + ':last'))

#     _that = this

#     #$('#buttons a').click @moveSlide()
#     $('#buttons').on 'click', 'a', @moveSlide

#     @$mainContainer.parent().mouseenter(->
#       clearInterval _that.run
#       return
#     ).mouseleave ->
#       _that.run = setInterval(rotate, _that.speed)
#       return

#     @resetSlides()

#   moveSlide: (event) =>
#     _that = this

#     #slide the item
#     if @$mainContainer.is(':animated')
#       return false

#     if event.target.id == 'prev'
#       _that.$mainContainer.stop().animate { 'left': 0 }, 1500, ->
#         _that.$mainContainer.find(_that.elm + ':first').before _that.$mainContainer.find(_that.elm + ':last')
#         _that.resetSlides()


#     if event.target.id == 'next'
#       _that.$mainContainer.stop().animate { 'left': _that.item_width * -2 }, 1500, ->
#         _that.$mainContainer.find(_that.elm + ':last').after _that.$mainContainer.find(_that.elm + ':first')
#         _that.resetSlides()


#     #cancel the link behavior
#     false


#   #if mouse hover, pause the auto rotation, otherwise rotate it

#   resetSlides: ->
#     #and adjust the mainContainer so current is in the frame
#     @$mainContainer.css 'left': -1 * @item_width


# rotate = ->
#   $('#next').click()

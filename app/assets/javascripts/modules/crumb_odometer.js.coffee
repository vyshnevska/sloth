class Sloth.CrumbOdometer
  constructor: () ->
    @speedInterval = 3000
    @defaultValue  = 1000

  init: ->
    odometerOptions = { auto: false }
    that = this
    i = 0
    while i < $('.odometer').length
      that.initOdometerInstance $('.odometer')[i]
      i++


  initOdometerInstance: (odometerEl) ->
    newOdometer = new Odometer({ el: odometerEl, value: @defaultValue, theme: 'car', duration: @speedInterval, animation: 'count'})
    newOdometer.update(odometerEl.dataset.number)
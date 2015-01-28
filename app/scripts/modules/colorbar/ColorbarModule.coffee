BaseModule = require '../BaseModule'

module.exports = class ColorbarModule extends BaseModule
  initialize: ->
    @MainView = require("./views/MainView")

    console.log 'Initializing ColorbarModule'
    @startWithParent = false

  onStart: ->
    super()

    console.log 'Starting ColorbarModule'

  onStop: ->
    console.log 'Stopping ColorbarModule'


Todos = require './collections/Todos'
BaseModule = require '../BaseModule'

module.exports = class TodoModule extends BaseModule
  initialize: ->
    @MainView = require './views/MainView'

    console.log 'Initializing TodoModule'
    @startWithParent = false

    @collection = new Todos([])

    @collection.fetch()

    @app.router.processAppRoutes @, {
      'todo/:id': 'showTodo'
    }

  onStart: ->
    super()
    console.log 'Starting TodoModule'

  onStop: ->
    console.log 'Stopping TodoModule'

  showTodo: (id) ->
    @collection.showTodo(id)

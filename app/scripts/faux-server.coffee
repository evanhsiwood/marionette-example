todos = require('./mocks/todos.json')

module.exports = {
  run: ->
    fauxServer.get("todos/", ->
      console.log "mock ⇾ [todos/ GET]"
      todos
    )
}
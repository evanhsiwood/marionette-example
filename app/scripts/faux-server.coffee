todos = require('./mock/todos.json')

module.exports = {
  run: ->
    fauxServer.get("todos/", ->
      todos
    )
}
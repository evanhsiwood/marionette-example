module.exports = {
  run: ->
    fauxServer.get("todos/", ->
      console.log "mock ⇾ [todos/ GET]"
      require('./mocks/todos.json')
    )
}
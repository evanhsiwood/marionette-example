module.exports = {
  run: ->
    fauxServer.get("todos/", ->
      console.log("BFF")
    )
}
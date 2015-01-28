module.exports = class Todo extends Backbone.Model
  defaults:
    id: 0
    text: ''
    done: false
    active: false

  toJSON: ->
    json = Backbone.Model.prototype.toJSON.apply(this, arguments)
    json.cid = @cid
    return json

  toggleActive: ->
    @collection.each (todo) =>
      unless todo is @
        todo.set 'active', false
      else
        @set 'active', !@get('active')

module.exports = class Todo extends Backbone.Model
  defaults:
    id: 0
    text: ''
    done: false
    active: false

  toggleActive: ->
    @collection.each (todo) =>
      unless todo is @
        todo.set 'active', false
      else
        @set 'active', !@get('active')

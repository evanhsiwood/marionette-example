Todo = require('../models/Todo')

module.exports = class Todos extends Backbone.Collection
  model: Todo
  url: 'todos/'

  showTodo: (text) ->
    _.each @where(text: text), (todo) ->
      todo.toggleActive()

Todo = require('../models/Todo')

module.exports = class Todos extends Backbone.Collection
  model: Todo
  url: 'todos/'

  showTodo: (id) ->
    _.each @where(id: id), (todo) ->
      todo.toggleActive()

Marionette.Behaviors.behaviorsLookup = ->
  window.Behaviors

# Behavior 作用是什么？常用的用法是？
# http://marionettejs.com/docs/v2.3.1/marionette.behaviors.html
window.Behaviors = {}
window.Behaviors.Closeable = require './behaviors/Closeable'

# 概念1 - Region
ToggleableRegion = require './regions/ToggleableRegion'
# 概念2 - View
AppView = require './views/AppView'
# 概念3 - Module
TodoModule = require('./modules/todo/TodoModule')
NotificationModule = require('./modules/notification/NotificationModule')
ColorbarModule = require('./modules/colorbar/ColorbarModule')

class App extends Backbone.Marionette.Application
  initialize: =>
    console.log 'Initializing app...'

    # 孤零零的一个 @router 的作用是？
    @router = new Backbone.Marionette.AppRouter()

    # 初始 AppView()
    @addInitializer((options) =>
      (new AppView()).render()
    )

    # 初始 Region
    @addInitializer((options) =>
      @addRegions({
        notificationRegion: {
          selector: "#notifications"
          regionClass: ToggleableRegion
          module: @submodules.Notification
        }
        todoRegion: {
          selector: "#todos"
          regionClass: ToggleableRegion
          module: @submodules.Todo
        }
        colorbarRegion: {
          selector: "#colorbar"
          regionClass: ToggleableRegion
          module: @submodules.Colorbar
        }
      })
    )

    # Backbone history
    # 这块是单独的学习内容
    @addInitializer((options) =>
      Backbone.history.start()
    )

    # module 初始化
    @module('Notification', NotificationModule)
    @module('Todo', TodoModule)
    @module('Colorbar', ColorbarModule)

    @start()

module.exports = new App()

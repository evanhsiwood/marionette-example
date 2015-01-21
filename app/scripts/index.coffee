window.App = require('./app')
bfs = require('./faux-server')

$ ->
  console.log("fauxServer version: " + fauxServer.getVersion());

  bfs.run()

  # window 上的对象可以直接访问，比如 window.App，App
  App.initialize()

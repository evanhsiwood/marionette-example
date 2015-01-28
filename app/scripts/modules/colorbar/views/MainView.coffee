getData = getData = ->
  [
    {
      color: "red"
      value: "#f00"
    }
    {
      color: "green"
      value: "#0f0"
    }
    {
      color: "blue"
      value: "#00f"
    }
    {
      color: "cyan"
      value: "#0ff"
    }
    {
      color: "magenta"
      value: "#f0f"
    }
    {
      color: "yellow"
      value: "#ff0"
    }
    {
      color: "black"
      value: "#000"
    }
  ]


ReactComponentView = require "../../../common/ReactComponentView"
MainV = require("./components/MainV.react.jsx")

module.exports = class MainView extends ReactComponentView

  behaviors:
    Closeable: {}

  component: ->
    new MainV({rows: getData()})






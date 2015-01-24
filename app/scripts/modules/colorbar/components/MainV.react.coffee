ItemRendererV = require("./ItemRendererV.react")

module.exports = MainV = React.createClass(
  getDefaultProps: ->
    rows: null

  getInitialState: ->
    {}

  __onItemRendererSelect: (data) ->
    alert data.color
    return

  render: ->
    _this = this
    React.DOM.div
      className: "root"
    , _.map(@props.rows, (row) ->
      new ItemRendererV(
        data: row
        onSelect: _this.__onItemRendererSelect
      )
    )
)
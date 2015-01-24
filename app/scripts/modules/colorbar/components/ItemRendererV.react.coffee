module.exports = ItemRendererV = React.createClass(
  getDefaultProps: ->
    data:
      color: null
      value: null

    onSelect: null

  getInitialState: ->
    selected: false

  __onClick: ->
    @setState
      selected: not @state.selected
    , ->
      @props.onSelect @props.data  if @state.selected and @props.onSelect
      return

    return

  render: ->
    React.DOM.div
      className: "box " + ((if @state.selected then "selected" else "unselected"))
      onClick: @__onClick
      style:
        backgroundColor: @props.data.value
    , @props.data.color
)
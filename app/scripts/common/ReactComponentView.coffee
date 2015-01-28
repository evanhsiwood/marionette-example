module.exports = class ReactComponentView extends Backbone.Marionette.View
  onShow: ->
    React.unmountComponentAtNode @_reactMountEl if @_reactMountEl

    @_reactMountEl = @$el[0]
    component = @component()
    React.renderComponent component, @_reactMountEl

  onClose: ->
    debugger
    React.unmountComponentAtNode @_reactMountEl if @_reactMountEl




module.exports = class ReactComponentView extends Backbone.Marionette.View
  onShow: ->
    React.unmountComponentAtNode @_reactMountEl if @_reactMountEl

    @_reactMountEl = @$el[0]
    component = @component()
    React.render component, @_reactMountEl

  # Figure out when will trigger this. It's no use now.
  onClose: ->
    React.unmountComponentAtNode @_reactMountEl if @_reactMountEl




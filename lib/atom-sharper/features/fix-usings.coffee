Omni = require '../../omni-sharp-server/omni'

module.exports =
  class FixUsings

    activate: =>
      atom.workspaceView.command "atom-sharper:fix-usings", ->
        Omni.fixUsings()

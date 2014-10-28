Omni = require '../../omni-sharp-server/omni'

module.exports =
  class CodeFormat

    activate: =>
      atom.workspaceView.command "atom-sharper:code-format", ->
        Omni.codeFormat()

      atom.on "omni:code-format", (d) =>
        console.log d
        atom.workspace.getActiveEditor()?.setText d.Buffer

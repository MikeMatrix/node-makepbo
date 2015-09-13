{execFile} = require 'child_process'
winReg = require 'winreg'
keyLocations = [
  new winReg hive: winReg.HKLM, key: '\\SOFTWARE\\Mikero\\MakePbo'
  new winReg hive: winReg.HKLM, key: '\\SOFTWARE\\Wow6432Node\\Mikero\\MakePbo'
  new winReg hive: winReg.HKCU, key: '\\SOFTWARE\\Mikero\\MakePbo'
  new winReg hive: winReg.HKCU, key: '\\SOFTWARE\\Wow6432Node\\Mikero\\MakePbo'
]

class MakePBO
  @options =
    formatArma: "-A"
    formatCWC: "-C"
    formatResistance: "-R"
    formatElite: "-E"
    formatVe: "-Ve"
    formatVm1: "-Vm1"
    formatVm2: "-Vm2"
    formatVx1: "-Vx1"
    formatVx2: "-Vx2"
    doNothing: "-N"
    binarize: "-B"
    lintcheck: "-L"
    binarizePreserve: "-T"
    checkExternal: "-G"
    showRapDecodingOnCheck: "-Gs"
    noPause: "-P"

  @getExecutablePath = (callback) ->
    for keyLocation in keyLocations
      keyLocation.get 'exe', (err, value) ->
        return callback(value.value) if not err? and value?

  @run = (folderPath, destination, args = [], callback) ->
    args.push folderPath
    args.push destination if destination?
    @getExecutablePath (executable) ->
      execFile executable, args, callback

module.exports = MakePBO

var MakePBO, execFile, keyLocations, winReg;

execFile = require('child_process').execFile;

winReg = require('winreg');

keyLocations = [
  new winReg({
    hive: winReg.HKLM,
    key: '\\SOFTWARE\\Mikero\\MakePbo'
  }), new winReg({
    hive: winReg.HKLM,
    key: '\\SOFTWARE\\Wow6432Node\\Mikero\\MakePbo'
  }), new winReg({
    hive: winReg.HKCU,
    key: '\\SOFTWARE\\Mikero\\MakePbo'
  }), new winReg({
    hive: winReg.HKCU,
    key: '\\SOFTWARE\\Wow6432Node\\Mikero\\MakePbo'
  })
];

MakePBO = (function() {
  function MakePBO() {}

  MakePBO.options = {
    formatArma: "-A",
    formatCWC: "-C",
    formatResistance: "-R",
    formatElite: "-E",
    formatVe: "-Ve",
    formatVm1: "-Vm1",
    formatVm2: "-Vm2",
    formatVx1: "-Vx1",
    formatVx2: "-Vx2",
    doNothing: "-N",
    binarize: "-B",
    lintcheck: "-L",
    binarizePreserve: "-T",
    checkExternal: "-G",
    showRapDecodingOnCheck: "-Gs",
    noPause: "-P"
  };

  MakePBO.getExecutablePath = function(callback) {
    var i, keyLocation, len, results;
    results = [];
    for (i = 0, len = keyLocations.length; i < len; i++) {
      keyLocation = keyLocations[i];
      results.push(keyLocation.get('exe', function(err, value) {
        if ((err == null) && (value != null)) {
          return callback(value.value);
        }
      }));
    }
    return results;
  };

  MakePBO.run = function(folderPath, destination, args, callback) {
    if (args == null) {
      args = [];
    }
    args.push(folderPath);
    if (destination != null) {
      args.push(destination);
    }
    return this.getExecutablePath(function(executable) {
      return execFile(executable, args, callback);
    });
  };

  return MakePBO;

})();

module.exports = MakePBO;

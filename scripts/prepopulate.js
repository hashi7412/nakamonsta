var exec = require("child_process").exec;
var os = require("os");

// Run command depending on the OS
if (os.type() === "Linux" || os.type() === "Darwin")
  exec(
    "truffle version | grep -i truffle | grep v5. || (echo You must use Truffle version 5.x.x; exit 1)"
  );

var exec = require("child_process").exec;
var os = require("os");

// Run command depending on the OS
if (os.type() === "Linux" || os.type() === "Darwin") exec("rm -rf build");
else if (os.type() === "Windows_NT") exec("rmdir /s build", puts);
else throw new Error("Unsupported OS found: " + os.type());

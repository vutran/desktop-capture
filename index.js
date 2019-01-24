const path = require("path");
const execa = require("execa");

module.exports = async overrideDir => {
  const dir = overrideDir || __dirname;
  return await execa.stdout(
    path.join(dir, "desktop-capture"),
    process.argv.slice(2)
  );
};

module.exports();

const AnyToken = artifacts.require("AnyToken");

module.exports = function(deployer) {
  deployer.deploy(AnyToken);
};

const AnyNFTToken = artifacts.require("AnyNFTToken");

module.exports = function(deployer) {
  deployer.deploy(AnyNFTToken);
};

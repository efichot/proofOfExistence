var ProofOfExistence = artifacts.require("./proofOfExistence.sol");

module.exports = function(deployer) {
  deployer.deploy(ProofOfExistence);
};

const CrowCoin = artifacts.require('./CrowCoin.sol');
const CrowCoinCrowdsale = artifacts.require('./CrowCoinCrowdsale.sol');

const Web3 = require("web3");
const web3 = new Web3();

module.exports = function (deployer) {

    const rate = new web3.BigNumber(8000);
    const cap = new web3.BigNumber(web3.toWei(10000, 'ether'));

    deployer.deploy(CrowCoin).then(function() {
        return deployer.deploy(CrowCoinCrowdsale, rate, cap, CrowCoin.address);
      });
}

pragma solidity ^0.4.18;
import "../node_modules/zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "../node_modules/zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "./CrowCoin.sol";


contract CrowCoinCrowdsale is CappedCrowdsale, MintedCrowdsale {

    function CrowCoinCrowdsale(uint256 _rate, uint256 _cap, MintableToken _token) public
        Crowdsale(_rate, msg.sender, _token)
        CappedCrowdsale(_cap)
        
    {
    }
}

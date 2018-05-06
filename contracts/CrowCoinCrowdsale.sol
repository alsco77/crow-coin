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

    function claimTokens(address _beneficiary, uint256 _amount) public payable {
        uint256 tokenAmountWei = _amount;

        _processPurchase(_beneficiary, tokenAmountWei);
        TokenPurchase(msg.sender, _beneficiary, 0, tokenAmountWei);

    }
}

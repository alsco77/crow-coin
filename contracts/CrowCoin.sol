pragma solidity ^0.4.18;
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "../node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol";

contract CrowCoin is MintableToken {
    string public name = "CrowCoin"; 
    string public symbol = "CROW";
    uint8 public constant decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 25000000 * (10 ** uint256(decimals));

    function CrowCoin() public 
    Ownable() {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }

    
}
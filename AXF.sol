pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract AXF is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function AXF(address _owner)  UpgradeableToken(_owner) {
    name = "AXF";
    symbol = "AXF";
    totalSupply = 100000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./A.sol";

contract B is A {


  uint a = 6;

  function getSomething() external view override returns(uint) {
    return a;
  }


} 

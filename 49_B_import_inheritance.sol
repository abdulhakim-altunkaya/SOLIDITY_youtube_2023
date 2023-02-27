//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./A.sol";

contract B is A {

  /*IMPORT INHERITANCE
    - Contract A deployment does not matter.
    - Contract B must be deployed.

    - State of Contract A does not change.
    - State of Contract B changes.

    - We can use functions and variables of Contract A (internal, external and public ones).
  */



} 
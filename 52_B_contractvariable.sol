//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./A.sol";

contract B {

    A public something;

    function assignContract(address otherContract) external {
      something = A(otherContract);
    }

    function foo(string memory _city) external {
      something.changeCity(_city);
    }


  /*     "CONTRACT VARIABLE"
    - Contract A must be deployed.
    - Contract B must be deployed.

    - State of Contract A changes.
    - State of Contract B does not change.

    - We need to have access to the file of target contract (Import statement is required)

    - We can use functions and variables of Contract A (internal, external and public ones).
  */
} 
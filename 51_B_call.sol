//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract B {

    bytes public data1;

    function foo(string memory _city, address otherContract) external {
       
       (bool success, bytes memory data) = otherContract.call(abi.encodeWithSignature("changeCity(string)", _city));
       data1 = data;
       require(success, "call failed");

    }


  /*     CALL
    - Contract A must be deployed.
    - Contract B must be deployed.

    - State of Contract A changes.
    - State of Contract B does not change.

    - call is used to use a specific function of contract A.

    - We can use functions and variables of Contract A (internal, external and public ones).
  */
} 
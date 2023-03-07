//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract B {

    string public myCity = "Siverek";

    function foo(address otherContract, string memory _word) external {
        (bool success, bytes memory data) = otherContract.delegatecall(abi.encodeWithSignature("changeCity(string)", _word));
        require(success, "failed");
    }

    /*     "DELEGATE CALL"
      - Contract A must be deployed.
      - Contract B must be deployed.

      - State of Contract A does not change.
      - State of Contract B changes.

      - delegate call is used for "proxy" contracts

      - INTERFACE: to access standard functions - state of contract A changes
      - CALL : to access specific functions - state of contract A changes
      - DelegateCall: to access a specific function - state of contract B changes
    */
} 
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

import "./A.sol";

contract B is A {

    function something1() external pure returns(string memory) {
      return A.foo();
    }
    function something2() external pure returns(string memory) {
      return super.foo();
    }


    /* super.foo() and A.foo() are the same. super is more handy because it allows us to access 
    all contracts that we inherit(imageine we are inheriting from 3 contracts instead of just A.
    So, instead of writing the name of the contract each single time, I can just say "super" 
    
    -Contract B must be deployed. Contract A deployment does not matter.
    -We need access to the file of Contract A.
    -When we call the function of Contract A, we are using the state of Contract B.

    */


}

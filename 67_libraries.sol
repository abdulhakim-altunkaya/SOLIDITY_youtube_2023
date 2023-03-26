//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/ca822213f2275a14c26167bd387ac3522da67fe9/contracts/utils/math/SafeMath.sol";

contract Apple {

    using SafeMath for uint;

    function addNum(uint a, uint b) external pure returns(uint) {
        return a.add(b);
    }



/*
  - Libraries are used to avoid repetitive functions in contracts AND/OR to increase security
  - Libraries cannot be deployed, they cannot have state variables
  - Libraries can only have pure/view functions
  - Libraries cannot inherit and cannot be inherited
  - Libraries cannot have fallback/receive and payable functions
  - First parameter of the library function comes to left side of function call. 
  The remaining parameters go inside the function call.
*/

}
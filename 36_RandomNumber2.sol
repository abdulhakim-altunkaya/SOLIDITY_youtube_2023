//SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Randomness {

    //RANDOM NUMBER 2: block.prevrandao

    function getRandom() external view returns(uint) {
        return block.prevrandao;
        //OR: return block.prevrandao % 100;
    }


    /*
    Must be ">=0.8.18"
    pseudo-randomness: not a true random number
    safer than using: uint(keccak256(abi.encodePacked(msg.sender, randomNum, block.timestamp)))
    validator can affect it to very small extent
    */

}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    
    uint public randomNum = 88;

    function getRandom() external {
        randomNum = uint(keccak256(abi.encodePacked(msg.sender, randomNum, block.timestamp)));
        randomNum = randomNum % 100;
    }

/*
    1) ingredients: 
    msg.sender, our variable, block.timestamp

    2) mix them and convert them to bytes: 
    abi.encodePacked()

    3) hash it:
    keccak256()

    4) convert it to number:
    uint()

*/
    
}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    mapping(uint => string) internal myMapping;

    function addValues(uint _num, string memory _word) external {
        myMapping[_num] = _word;
    }

    function getValue(uint _num) external view returns(string memory) {
        return myMapping[_num];
    }


    
}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //USE FOR LOOP TO RETURN THE VALUES OF MAPPING
    mapping(uint => string) internal myMapping;

    function addValues(uint _num, string memory _word) external {
        myMapping[_num] = _word;
    }

    string[] internal myArray;

    function getMappingValues(uint _begin, uint _end) external {
        for(uint i=_begin; i<_end; i++) {
            string memory city = myMapping[i];
            myArray.push(city);
        }
    }

    //just a function to see our array
    function getArray() external view returns(string[] memory) {
        return myArray;
    }


}
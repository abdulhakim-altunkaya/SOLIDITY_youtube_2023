//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //NGO MEMBERSHIP CONTRACT - MAPPING
    mapping(address => bool) public myMapping;
    function addMember1(address _newMember) external {
        myMapping[_newMember] = true;
    }
    function checkMember1(address _newMember) external view returns(bool) {
        return myMapping[_newMember];
    }



    //NGO MEMBERSHIP CONTRACT - ARRAY
    address[] public myArray;
    function addMember2(address _newMember) external {
        myArray.push(_newMember);
    }
    function checkMember2(address _newMember) external view returns(bool) {
        bool status = false;
        for(uint i=0; i<myArray.length; i++) {
            if(myArray[i] == _newMember) {
                status = true;
                break;
            }
        }
        return status;
    }



}
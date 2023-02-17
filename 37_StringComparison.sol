//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //STRING COMPARISON
    function compare(string memory _word) external pure returns(bool) {
        if( keccak256(abi.encodePacked(_word)) == keccak256(abi.encodePacked("apple")) ) {
            return true;
        } else {
            return false;
        }
    }




    /*
    keccak256()
    bytes() -- abi.encodePacked() -- abi.encode()

    WHY keccak? - easy to compare
                - secure to compare
    WHY abi.encode/encodePacked, bytes?
                keccak cannot directly grab func parameter value 
    WHY we dont use abi.encode/encodePacked or bytes?
                == operator cannot be used to compare bytes memory values
    */

}
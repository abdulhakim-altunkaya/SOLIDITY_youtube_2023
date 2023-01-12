//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract ViewFunc {

    string internal myCity = "Nusaybin";

    function getCity() external view returns(string memory) {
        return myCity;
    }

    function changeCity() external {
        myCity = "El Paso";
    }
    
}
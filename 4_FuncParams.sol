//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract FuncParams {

    string public myCity = "Cizre";

    function changeCity(string memory _city) external {
        myCity = _city;
    
    }
    
}
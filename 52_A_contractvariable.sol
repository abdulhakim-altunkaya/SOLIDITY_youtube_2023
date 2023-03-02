//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract A {
    
    string public myCity = "Derik";

    function changeCity(string memory _city) external  {
        myCity = _city;
    }

} 
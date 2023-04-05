//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./IApple.sol";

contract A is IApple {
    
    string public myCity = "Cizre";

    function changeCity(string memory _city) external  {
        myCity = _city;
    }

} 
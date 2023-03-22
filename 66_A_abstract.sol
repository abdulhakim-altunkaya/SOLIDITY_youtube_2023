//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

abstract contract A {
    
    string public myCity = "Siverek";

    function changeCity(string memory _city) external {
        myCity = _city;
    }

    function getSomething() external view virtual returns(uint);

    /*
    Abstract contracts must have at least 1 function not implemented
    As they have at least 1 function not implemented, they cannot be compile and deployed
    They can be used to replace "simple virtual-override" or "interface"
    But "simple virtual-override" or "interface" are much more popular than abstract contracts
    For that reason abstract contracts are not very much used.  */
} 
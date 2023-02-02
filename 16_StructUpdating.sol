//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    struct Countries {
        string name;
        uint population;
    }

    Countries public myCountry = Countries("Sweden", 10);

    function updateValue(uint _population) external {
        myCountry.population = _population;
    }

    function getPop() external view returns(uint) {
        return myCountry.population;
    }

}
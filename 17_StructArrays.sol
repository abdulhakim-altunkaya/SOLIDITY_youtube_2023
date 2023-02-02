//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    struct Cities {
        string name;
        uint population;
    }

    Cities[] internal myArray;

    function addElements(string memory _name, uint _population) external {
        Cities memory myCity = Cities(_name, _population);
        myArray.push(myCity);
    }

    function getArray() external view returns(Cities[] memory) {
        return myArray;
    }

}
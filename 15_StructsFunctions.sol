//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    struct Cars {
        string brand;
        uint price;
    }


    Cars internal myVehicle2;

    function createVar(string memory _brand, uint _price) external {
        myVehicle2 = Cars(_brand, _price);
    }

    function getVar() external view returns(Cars memory) {
        return myVehicle2;
    }

}
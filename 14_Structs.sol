//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    struct MyCar {
        string brand;
        uint year;
    }

    MyCars public myVehicle = MyCars("BMW", 40000);
    


}
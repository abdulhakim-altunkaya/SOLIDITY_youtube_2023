//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    struct Cars {
        string brand;
        uint price;
    }

    mapping(uint => Cars) internal myMapping;

    function addValues(uint _key, string memory _brand, uint _price) external {
        Cars memory myCar = Cars(_brand, _price);
        myMapping[_key] = myCar;
    }

    function getValue(uint _key) external view returns(Cars memory) {
        return myMapping[_key];
    }



    
}
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes {


    //1) Boolean (bool): True or False.
    bool public myBool = false;

    //2) Integer (int) Numbers (including negative numbers). Flavors: int8, int16, int24,....int256
    //int256 = int
    int public myInt = -9;
    int256 public myInt2 = 57896044618658097711785492504343953926634992332820282019728792003956564819967;

    //3) Unsigned Integer (uint)
    //Numbers (excluding negative numbers). Flavors: uint8, uint16, uint24,....uint256
    // uint256 = uint = 2**256-1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935
    uint public myUint = 8;
    uint256 public myUint2 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    //4) enum : 
    enum Burger { 
        BIG,
        MEDIUM,
        SMALL
    }
    // declaring a variable of type enum
    Burger public myFavourite = Burger.BIG;

    //5) bytes 
    // unit of measurement of computer memory. 1 byte = 8 bits (a gathering 8 zeros and ones)
    // used to store fixed size words.
    // hexadecimal format (0x), bytes1...bytes32
    // Cheaper to use. 
    bytes32 public myBytes = "Mardin";

    // 6) address 
    // 20 bytes data type to store account addresses in Ethereum. 
    // hexadecimal format (0x)
    address public myAddress  = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;




    //7) string
    //UTF-8 format
    string public myString = "Mardin";

    //8) array
    //used group together same type of elements. Can be dynamic or fixed size.
    string[] public myWords = ["orange", "kiwi", "banana"];
    

    //9) structs
    //customizable data dypes
    struct Cars {
        string brand;
        uint price;
    }
    Cars public myCar = Cars("Chevrolet", 1000);

    //10) mappings
    //key-value pairs. very useful, very common
    mapping(uint => string) public myMapping;

}

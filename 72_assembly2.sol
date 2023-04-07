//SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Apple {

    uint internal num = 6;

    function foo1() public view returns (uint) {
        assembly {
            let x := sload(num.slot)
            mstore(0x0, x)
            return(0x0, 0x20)
        }
    }

    function foo2() public view returns (uint) {
        uint x = num; //value of x is in memory but not at 0x0 location
        assembly {
            mstore(0x0, x) //value of x is in memory and at 0x0 location now.
            return(0x0, 0x20)
        }
    }

    /* foo2(): Although x value is in the memory, we dont know its memory location.
    So, we need save it in a specific memory location and later can return.

    foo1() : Why we say "sload(num.slot)" but not just "sload(num)"
    Contract storage is arranged as key-value pairs. So, "slot" is the key here.
    "slot" is a notation that is pointing us to the value of the storage variable.
    There is also "offset" notation which is used for complex data types.
    So, "slot" is acting like an object property which is taking us to the value.

    */
    /*
    sload() : loads a value from storage to EVM register. 
        (EVM Register: an exlusive data location used by EVM for contract execution. 
        It is a memory location but not the main memory)

    mstore(): loads a value from EVM Register to the main/free memory. OR
              loads a value from stack memory to EVM register and then to main/free memory.
              cannot load a value from contract storage.    
    */
}
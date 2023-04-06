//SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Apple {

    

    function foo() public view returns (uint) {
        assembly {
            let value := sload(num.slot)
            mstore(0x0, value)
            return(0x0, 0x20)
        }
    }
    uint internal num = 6;
    function foo1() public view returns (uint) {
        uint value = num;
        assembly {
            mstore(0x0, value)
            return(0x0, 0x20)
        }
    }


    

    /*
    sload() : loads a value from storage to EVM register. 
        (EVM Register: an exlusive data location used by EVM for contract execution. 
        It is a memory location but not the main memory)

    mstore(): loads a value from EVM Register to the main/free memory. OR
              loads a value from stack memory to EVM register and then to main/free memory.
              cannot load a value from contract storage.    
    */
}
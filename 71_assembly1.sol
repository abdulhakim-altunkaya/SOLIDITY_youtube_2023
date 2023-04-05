//SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Apple {


    function addNumbers(uint a, uint b) public pure returns (uint) {
        assembly {
            let c := add(a, b)
            mstore(0x0, c)
            return(0x0, 0x20)
        }
    }
    /*
    ASSEMBLY
    - Solidity is a high-level language, Assembly is a low level language
    - You can write smart contracts with any of them.
    - Assembly is more efficient but harder to read and write.
    - Assembly allows developers more control over the code.
    - Assembly is directly using EVM opcodes to make operations.
        Solidity also uses the same opcodes but not directly.
    - We need to use Assembly for some certain situations.

    SMART CONTRACT --> COMPILATION  --> BYTECODE --> OPCODES --> EVM
    */
}
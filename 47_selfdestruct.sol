//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {


    
    function destroy() external {
        selfdestruct(payable(msg.sender));
    }


    /*
    SELFDESTRUCT
    1) It deletes all the byte code of contract from the blockchain and sends remaining ether inside 
    contract to any address.
    2) It does not send ERC20 tokens.
    3) If anybody sends ether to the destroyed contract, that ether will be lost.
    4) History of the contract will remain on the blockchain. Only bytecode will be removed.
    5) Use of "selfdestruct" encouraged by the blockchain because it removes broken/useless contracts from blockchain. 
    When it is successfully called, caller will be rewarded with half of the gas fee("negative gas")
    6) good for security. Provides an emergency exit against continuous attacks
    7) Dont use "msg.sender". Use "owner" logic or hardcode your metamask address.
    8) Make sure onlyOwner or selected accounts can call this function.
    */

}
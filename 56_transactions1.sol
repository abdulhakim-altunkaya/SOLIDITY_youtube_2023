//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Transactions {

    // ACCOUNT --> CONTRACT
    function deposit() external payable {}

    //a view function to see the ether balance of the contract
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }


    

}
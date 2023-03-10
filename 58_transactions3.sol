//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Transactions {


    // ACCOUNT --> CONTRACT --> ACCOUNT
    function something(address _receiver, uint _amount) external payable {
        (bool success, ) = _receiver.call{value: _amount}("");
        require(success, "failed");
    }



    // ACCOUNT --> CONTRACT
    function deposit() external payable {}

    //a view function to see the ether balance of the contract
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

}
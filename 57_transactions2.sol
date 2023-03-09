//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Transactions {


    // CONTRACT --> ACCOUNT
    function something(address _receiver, uint _amount) external {
        (bool success, ) = _receiver.call{value: _amount}("");
        require(success, "failed");
    }



    // ACCOUNT --> CONTRACT
    function deposit() external payable {}

    //a view function to see the ether balance of the contract
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }


    //MORE FLAVOURS OF THE SAME FUNCTION
    function something1(address _receiver) external {
        (bool success, ) = _receiver.call{value: 1 ether}("");
        require(success, "call failed, probably no money"); 
    }
    //You can specify the amount in WEI
    function something2(address _receiver, uint _amount) external {
        (bool success, ) = _receiver.call{value: _amount}("");
        require(success, "call failed, probably no money"); 
    }
    //if you just want to send ether and if you do not want to write 18 zeros
    function something3(address _receiver, uint _amount) external {
        (bool success, ) = _receiver.call{value: _amount*(10**18)}("");
        require(success, "call failed, probably no money"); 
    }

}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./Child.sol";

contract Parent {

    Child public childContract;

    function assignContract(string memory _name) external {
        childContract = new Child(_name);
    }

    function getData() external view returns(string memory) {
        return childContract.myCity();
    }
}
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Apple {

    event LogSomething(string funcName, bytes funcData);

    fallback() external payable{
        emit LogSomething("fallback", msg.data);
    }

    receive() external payable{
        emit LogSomething("receive", "");
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }


    /* 
    fallback() function

        1) fallback function is used to let our contract to receive ether if 
        msg.data is not empty, the called function does not exist,
        msg.data is not empty, the called function parameter number and type are passed wrong,
        msg.data empty and receive() is not defined.

        2) Gas stipend: 2300 gas units by default, but can be specified by 
        the sender (or set to 0 if no gas stipend is provided). As fallback() function
        can be called with no gas stipend, it may end up costing more gas than receive()
        function, especially when it needs to perform complex operations or 
        interact with other contracts

        3) As fallback() can be called in many different ways, attackers can use 
        fallback() to exploit the contract. To overcome this, we can put revert()
        inside fallback().

        4) More flexible, less secure, can be more expensive

    receive() function:

        1) It is used to let our contract to receive ether if msg.data is empty

        2) Gas stipend: 2300 gas units by default.

        3) As receive() has lesser functionality compared to fallback(), there less
        possibility to exploit the contract by using receive().

        4) Less flexible, more secure, can be less expensive

    We must declare fallback and receive functions as "payable" so that they can receive ether.

    You should use fallback() and receive() together.

    msg.data = a special variable that contains information about
        the name of the function called (function selector) + its arguments    

    Documentation about fallback() and receive():
    https://blog.soliditylang.org/2020/03/26/fallback-receive-split/

    A nice table showing where to use fallback() and receive():
    https://sergiomartinrubio.com/articles/solidity-fallback-and-receive-functions/

     */
    


}
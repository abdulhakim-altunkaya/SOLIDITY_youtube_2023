//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    uint internal myNum = 8;
    bool internal myBool = true;
    string internal myWord = "Nusaybin";


    function changeValues(uint _num, bool status, string memory _word) public {
        myNum = _num;
        myBool = status;
        myWord = _word;
    }


    function call1() external {
        changeValues(88, true, "mardin");
    }


    function call2() external {
        changeValues({_word: "apple", _num: 55, status: false });
    }



    function getValues() external view returns(uint, bool, string memory) {
        return(myNum, myBool, myWord);
    }


}
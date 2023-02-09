//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    enum Hamburgers {BIG, MEDIUM, SMALL}

    Hamburgers internal myChoice;

    function set1() external {
        myChoice = Hamburgers(1);
    }

    function set2() external {
        myChoice = Hamburgers.SMALL;
    }

    function getValue1() external view returns(Hamburgers) {
        return myChoice;
    }

    function getValue2() external pure returns(Hamburgers) {
        return Hamburgers.SMALL;
    }

    Hamburgers[] internal clientChoices = [Hamburgers.SMALL, Hamburgers(1)];

    function getValue3() external view returns(Hamburgers[] memory) {
        return clientChoices;
    }
    

/*
        *****ENUMS******
            
        ENUM LISTS      ---- > enum Hamburgers {BIG, MEDIUM, SMALL}
        ENUM VARIABLES  ---- > Hamburgers internal myChoice
        ENUM VALUES     ---- > 0 or 1 or 2


    1. Enum values look like uint but they are not uints

    2. You cannot use access modifiers (public, internal) on enum lists, 
    but you can use them on enum VARIABLES

    3. Enum lists are not arrays. You cannot iterate enum lists.
    You cannot use for/while loops or .length property. You cannot update
    them.

    4. Enum lists must have at least one value

*/
    
}
//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    string[] internal cities = ["Luanda", "Juarez", "Vilnius"];

    function change1() external {
        cities[0] = "Kaunas";
    }

    function change2(string memory _word) external {
        cities[1] = _word;
    }

    function change3() external {
        cities = ["Windhoek", "Mombasa"];
    }

    function getArray() external view returns(string[] memory) {
        return cities;
    }



     

}
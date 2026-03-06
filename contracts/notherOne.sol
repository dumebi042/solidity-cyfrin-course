// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract notherOne {
    struct Person {
        string name;
        uint256 favNum;
    }
    Person[] public personAttr;

    function addPeople(string memory _name, uint256 _favNum) public {
personAttr.push(Person(_name, _favNum));
    }
}
contract AnimalStore {
struct Animals {
string listOfAnimals; 
}
Animals[] public animalType;
function  addAnimal(string memory _listOfAnimals) public {
animalType.push(Animals (_listOfAnimals));
}
}

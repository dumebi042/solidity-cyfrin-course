// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // stating our version

contract SimpleStorage {
    
    uint256 myFavouriteNumber; // gets initialized to 0 if no value given

struct Person {
    string personName;
    uint256 favouriteNumber;
} 

mapping (string => uint256) public nameToFavoriteNumber;

// Person public dumebi = Person ({favouriteNumber: 30, personName: "Dumebi"});
Person[] public listOfPeople; //creates an empty list/array

function addPerson(string memory _name, uint256 _favouriteNumber) public {
listOfPeople.push( Person(_name, _favouriteNumber) );
nameToFavoriteNumber[_name] = _favouriteNumber;
}
function store (uint256 _myFavouriteNumber) public virtual {
 myFavouriteNumber = _myFavouriteNumber;
}

function retrieve() public view returns (uint256){
     return myFavouriteNumber;
}

}
contract Piggy{
    constructor(){}
}

contract Stores{
    constructor(){}
}

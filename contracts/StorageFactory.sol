// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

//type (primitive data, struct, contracts etc) visibility name
SimpleStorage[] public listOfSimpleStorageContracts;
//address[] public listOfSimpleStorageAddresses; //this will be an empty array called...

//create a new function to capture addresses to the empty array
function createSimpleStorageFactory() public{

    SimpleStorage newSimpleStorageContract = new SimpleStorage();
    listOfSimpleStorageContracts.push(newSimpleStorageContract);

}

function sfStores(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)  public{

SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
mySimpleStorage.store(_newSimpleStorageNumber);
}

function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
return mySimpleStorage.retrieve();
}

}
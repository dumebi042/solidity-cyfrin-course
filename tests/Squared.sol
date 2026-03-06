//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract Squared is SimpleStorage {
    function store(uint _newSquaredNumber) public override {
        myFavouriteNumber = _newSquaredNumber ** 2;
    }
}

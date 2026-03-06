// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Cows {
    constructor(){}
}

contract Birds {
    constructor(){}
}

contract AnimalFactory{
    Birds public birds;
    Cows public cows;

    function createAnimals() public{
        birds = new Birds();
        cows = new Cows();
    }
}
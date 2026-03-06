// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfContractInstances;

    function createInstances() public {
        SimpleStorage myInstances = new SimpleStorage();
        listOfContractInstances.push(myInstances);
    }

    function sfStore(uint256 _index, uint256 _number) public {
        SimpleStorage myIndex = listOfContractInstances[_index];
        myIndex.store(_number);
    }

    function sfGet(uint256 _index) public view returns(uint256){
        SimpleStorage instance = listOfContractInstances[_index];
        return instance.retrieve();
    }

}

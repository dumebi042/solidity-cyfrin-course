// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract SimpleBank {
    // Mapping: each address maps to a uint256 balance
    mapping(address => uint256) public addressToBalance;

    // Function to add an amount to the caller's balance
    function addToBalance(uint256 _amount) public {
        // Increase the balance of msg.sender
        addressToBalance[msg.sender] += _amount;
    }

    // Function to check your balance
    function getMyBalance() public view returns (uint256) {
        return addressToBalance[msg.sender];
    }
}
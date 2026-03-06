// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract DataTest {

    struct Person {
        string name;
        uint256 age;
    }
// Person[] public people;
// Person memory p = people[0];
// p.age = 50;
    Person public person = Person("Alice", 30);

    function modifyPerson() view public {
        Person memory tempPerson = person;
        tempPerson.age = 99;
    }

    // // function modifyPersonStorage() public {
    // //     Person storage tempPerson = person;
    // //     tempPerson.age = 77;
    // // }

    // function modifyPerson() public {
    // person.age = 99;
// }
}

contract BalanceStorage {

    address account;
    uint256 balance;
    
    mapping(address => uint256) public addressToBalance;

    function setBalance(uint256 _amount) public {
        addressToBalance[msg.sender] = _amount;
    }

    function getBalance(address _user) public view returns (uint256) {
        return addressToBalance[_user];
    }
}
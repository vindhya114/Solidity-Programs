// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract Migrations {
    address public owner;
    uint public last_completed_migration;

    modifier restricted() {
        require(msg.sender == owner, "Not authorized");
        _; // Placeholder for the function body
    }

    constructor() { // Changed to constructor
        owner = msg.sender;
    }

    function setCompleted(uint completed) public restricted { // Added public visibility
        last_completed_migration = completed;
    }

    function upgrade(address new_address) public restricted { // Added public visibility
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}

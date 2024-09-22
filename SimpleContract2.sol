// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract SimpleContract2 {
    uint private z; // Made z private to encapsulate state

    function addition(uint x) public returns (uint y) {
        z = x + 5;
        y = z;
    }

    function difference(uint x) public returns (uint y) {
        z = x - 5;
        y = z;
    }

    function division(uint x) public returns (uint y) {
        require(x > 0, "Division by zero"); // Add a check to prevent division by zero
        z = x / 5;
        y = z;
    }

    function currValue() public view returns (uint) { // Changed 'constant' to 'view'
        return z;
    }
}

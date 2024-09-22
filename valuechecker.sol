// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract ValueChecker {
    uint private price = 10; // Made private for encapsulation
    event ValueEvent(bool returnValue);

    // Function visibility is now explicitly set to public and returns a boolean
    function Matcher(uint8 x) public returns (bool) {
        if (x >= price) {
            emit ValueEvent(true); // Use emit keyword to trigger the event
            return true;
        } else {
            emit ValueEvent(false); // Emit event if the condition is false
            return false; // Ensure the function returns false
        }
    }
}

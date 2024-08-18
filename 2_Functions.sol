// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Functions {
    uint roll_number = 21;

    // updating state
    function modifyRollNumber (uint _roll_number) public returns (uint) {
        roll_number = _roll_number;
        return roll_number;
    } 

    // View functions: Only Reads the blockchain state, without sending a transactiioon
    function showRollNumber () public view returns (uint) {
        return roll_number;
    } 

    // Pure function: Cannot perform any state updates or read from the blockchain state. 
    // Its primary purpose is to execute computations that do not depend on or alter the contract's state.
    function add (uint num) public pure returns (uint) {
        uint ans = num + 10;
        return ans;
    } 
}
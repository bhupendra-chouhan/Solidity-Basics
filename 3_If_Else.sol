// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract If_Else {
    function checkNum(uint _num) pure public returns (string memory) {
        if (_num == 2) {
            return "two";    
        } else if (_num == 3) {
            return "three";
        } else return "Execution Succesfull!!";
    }
}
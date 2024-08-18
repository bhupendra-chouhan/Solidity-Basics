// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Loops {
    uint[] arr1  = [9,8,7,47]; // empty array

    function forloop () public {
        for (uint i = 0; i<=5; i++) 
        {
            arr1.push(i);
        }
    }

    function whileloop () public {
        uint i = 10;
        while (i>=6) 
        {
            arr1.push(i);
            i--;
        }
    }

    function showwArr () public view returns (uint[] memory) {
        return arr1;
    }
}
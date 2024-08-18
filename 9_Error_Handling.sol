// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract ErrorHandling {
    string public str = "Bhupendra";

    function requireFunc1(uint _i) public returns (string memory) {
        str = "requireFunc1 Called!";
        require(_i==0);
        return str;
    }

    function requireFunc2(uint _i) public returns (string memory) {
        str = "requireFunc2 Called!";
        require(_i==0, "condition not met");
        return str;
    }

    function revertFunc(uint _i) public returns (string memory) {
        str = "revertFunc Called!";
        if (_i != 0) {
            revert("Revert condtion met.");
        }
        return str;
    }

    function assertFunc(uint _i) public returns (string memory) {
        str = "assertFunc Called!";
            assert(_i == 0);
        return str;
    }
}

/*
- Error Handling:
    An error will undo all changes made to the state during a transaction.

- You can throw an error by calling require, revert or assert:
    - "require" is used to validate inputs and conditions before execution. Gives back the remaining gas fees.
    - "revert" is similar to require. See the code below for details. Gives back the remaining gas fees.
    - "assert" is used to check for code that should never be false. Failing assertion probably means that there is a bug. 
      Mostly used for internal contract errors. Cost is high because it consumes whole gas fees.      
*/
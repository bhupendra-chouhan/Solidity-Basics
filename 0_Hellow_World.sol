// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Hello_World {
    string greet = "Hello World!";

    function sayHello () public view returns (string memory) {
        return greet;
    }
}
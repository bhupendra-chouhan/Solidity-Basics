// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Arrays {
    uint[] arr1 = [1,2,3,4,5];
    uint[5] arr2 = [1,2,3,4,5];

    function showArr() public view returns (uint[] memory) {
        return arr1;
    }

    function pushOp(uint _ele) public returns (uint[] memory) {
        arr1.push(_ele);
        return arr1;
    }

    function popOp() public returns (uint[] memory) {
        arr1.pop();
        return arr1;
    }
}
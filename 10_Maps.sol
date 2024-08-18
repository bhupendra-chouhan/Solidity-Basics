// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Maps {
    mapping(uint  => string) myMap;

    function addMapData(uint _i, string memory str) public {
        myMap[_i] = str;
    }

    function getData(uint _i) public view returns (string memory) {
        return myMap[_i];
    }
}

/*
- Maps in solidity: Used to associate one datatype to another.
    A mapping in Solidity is a reference type that maps keys to values. 
    Each key is associated with a single value, which can be of any type, including other mappings, arrays, or structs.
    'mapping' is usually stored in contract storage and is used to maintain state.

    In Solidity, you cannot directly return a mapping from a function. 
    This limitation exists because mappings are not iterable and,
    Solidity does not support returning entire mappings due to their dynamic nature and storage characteristics.
*/ 


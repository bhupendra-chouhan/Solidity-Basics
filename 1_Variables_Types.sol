// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Variables_Types {
    // int integer;
    // uint unsignedInteger;
    // bool bool_value;
    // string str;
    // address addr;
    
    // With public: 
    // int public integer;
    // uint public unsignedInteger;
    // bool public bool_value;
    // string public str;
    // address public addr;
    
    // With initialized values:
    int public integer = -55;
    uint public unsignedInteger = 24;
    bool public bool_value = true;
    string public str = "Bhuhpendra";
    address public addr = 0x513fE3B68C5BA2CC2BF95C130493ca1Ec2940AF8;

    // Reassigning Values: State variables cannot be modified outside of function or constructor
    // function modif(int _integer) public returns (int) {
    //     integer = _integer;
    //     return integer;
    // }


    // Constants: Variables containing Hard coded, that cannot be modified and should be initialised with a value, when declared.
    string public constant first_name = "BHUPENDRDA";

    // Reassigning Values: Throws error
    // function modif_name(string memory _first_name) public returns (string memory) {
    //     first_name = _first_name;
    //     return first_name;
    // }
}


// Variables
// There are 3 types of variables in Solidity

// local variables:
// declared inside a function
// not stored on the blockchain

// state variables:
// declared outside a function
// stored on the blockchain

// global variables: (provides information about the blockchain)
// - address(this)
// - address.balance
// - msg.sender
// - block.number
// - tx.origin
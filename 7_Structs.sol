// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Structs_in_solidity {
    struct Attendence {
        string name;
        bool isPresent;
    }

    // State Variable : Stored in sotrage
    Attendence public defaultAttendence;

    // defining default values for the instance of Attendence struct:
    constructor () {
        defaultAttendence = Attendence({
            name: "Unknown",
            isPresent: false
        });
    }

    Attendence[] public attendence;

    function getAttendenceList (string memory _name, bool _isPresent) public returns (Attendence[] memory) {
        // Local Variable: Stored in memory
        Attendence memory studentAttendence = Attendence ({name: _name, isPresent: _isPresent});
        attendence.push(studentAttendence);
        return attendence;
    }

    function updateAttendence (uint _index, bool _isPresent) public returns (Attendence memory) {
        attendence[_index].isPresent = _isPresent;
        return attendence[_index];
    }
}
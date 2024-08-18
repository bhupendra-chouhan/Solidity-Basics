// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract Enums_in_Solidity {
    enum Directions {
        Left,
        Right,
        Top,
        Bottom
    }

    Directions public direction;

    function getDirection() view public returns (Directions) {
        return direction;
    }

    function setDirectionUsingUint(Directions _direction) public {
        direction = _direction;
    }

    function setDirectionTop() public {
        direction = Directions.Top;
    }

    function currentDirection() public view returns (string memory) {
        if (direction == Directions.Left) return "Left Direction!";
        else if (direction == Directions.Right) return "Right Direction!";
        else if (direction == Directions.Top) return "Top Direction!";
        else if (direction == Directions.Bottom) return "Bottom Direction!";
        else return "Unknown direction!";
    }
}


/*
enum
Purpose: An enum (short for enumeration) is a user-defined type that consists of a set of named constants. It is used to represent a collection of related values in a more readable way.

Characteristics:

Named Values: Provides a way to define a variable that can hold a limited set of predefined values.
Storage: Enums are stored as integers in Solidity, starting from 0 for the first value, 1 for the second, and so on.
Readability: Improves code readability by replacing magic numbers with meaningful names.

Use Case: Used to define a set of constants that can represent states, options, or categories in your contract.
*/
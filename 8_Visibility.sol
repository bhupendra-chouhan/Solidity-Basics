// SPDX-License-Identifier: MIT
pragma solidity >=0.7.10;

contract ParentContract {
    string public parentFirstName = "Ramesh";  // stored in Storage
    string private parentlastName = "Singh"; // stored in Storage
    string internal parentSkills = "Sports"; // stored in Storage

    // can be accessed from anywhere
    function publicFunc() public pure  returns (string memory) {
        return "publcFunc called!";
    }

    // cannot accessed outside of this contract
    function privateFunc() private pure returns (string memory) {
        return "privateFunc called!";
    }

    // only accessed by derived contracts
    function internalFunc(string memory _childName) internal pure returns (string memory) {
        return string(abi.encodePacked(_childName, ". internalFunc  is called!"));
    }

    // only accessed outside of this or derived contract
    function externalFunc(string calldata _para) external returns (string memory) {
        parentFirstName = _para;
        return parentFirstName;
    }
}


// deriving ChildContract from ParentContract (Inheritance)
contract ChildContract is ParentContract {
    // accessing internal function
    function getInternalFnc() public pure returns (string memory){
        return internalFunc("John");
    }
}


contract GrandChildContract  {
    ParentContract parent = new ParentContract(); //  creating instance of ParentContract and externally calling it.

    // accessing parent public function
    function getParentPubFunc() public view returns (string memory) {
        return parent.publicFunc();
    }
}


/*
- What is Inheritance and derived cotracts?

- Different Visibility types:
public: Accessible both internally and externally. For state variables, automatically provides a getter function.
internal: Accessible only within the contract and derived contracts.
private: Accessible only within the contract where defined. Not visible or callable by derived contracts.
external: Callable only from external sources. Cannot be invoked internally.

- Storage v/s Calldata v/s memory:
storage: 
  Data stored in storage is persistent and remains on the blockchain between transactions.

memory:
  It's used for internal functions or when the data passed as argument to a funnction needs to be modified.

Calldata:
  You can use calldata instead of memory for function parameters if the data is only read and not modified.
  calldata is optimal for external functions when dealing with large data that should not be modified.

- Key Points to Remember
Single Deployment: Only the derived contract is deployed when you deploy it; the parent contract is not deployed separately.
Embedded Code: The code of the parent contract is embedded in the derived contract's deployment.
Separate Deployments: Deploying the parent contract does not deploy derived contracts.
*/ 
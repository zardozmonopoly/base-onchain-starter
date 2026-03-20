// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SimpleStorage
 * @notice A basic storage contract deployed on Base L2
 * @dev Stores and retrieves a uint256 value onchain
 */
contract SimpleStorage {
    uint256 private storedValue;
    address public owner;

    event ValueUpdated(address indexed updatedBy, uint256 oldValue, uint256 newValue);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    constructor(uint256 _initialValue) {
        storedValue = _initialValue;
        owner = msg.sender;
    }

    /// @notice Store a new value
    function store(uint256 _value) public onlyOwner {
        uint256 old = storedValue;
        storedValue = _value;
        emit ValueUpdated(msg.sender, old, _value);
    }

    /// @notice Retrieve the stored value
    function retrieve() public view returns (uint256) {
        return storedValue;
    }
}

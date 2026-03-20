// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title BaseGreeter
 * @notice Onchain greeter contract deployed on Base L2
 * @dev Stores a greeting message and tracks who set it
 */
contract BaseGreeter {
    string private greeting;
    address public lastGreeter;
    uint256 public greetCount;

    event GreetingUpdated(address indexed by, string newGreeting, uint256 count);

    constructor(string memory _initialGreeting) {
        greeting = _initialGreeting;
        lastGreeter = msg.sender;
        greetCount = 0;
    }

    /// @notice Update the greeting message
    function setGreeting(string memory _greeting) public {
        require(bytes(_greeting).length > 0, "Greeting cannot be empty");
        greeting = _greeting;
        lastGreeter = msg.sender;
        greetCount++;
        emit GreetingUpdated(msg.sender, _greeting, greetCount);
    }

    /// @notice Get the current greeting
    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    /// @notice Get full greeter stats
    function getStats() public view returns (
        string memory currentGreeting,
        address lastSender,
        uint256 totalGreets
    ) {
        return (greeting, lastGreeter, greetCount);
    }
}

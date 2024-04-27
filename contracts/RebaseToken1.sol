// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RebaseToken1 is ERC20,Ownable {
    address private owner;

    constructor() ERC20("RebasToken1","RBT1") Ownable(msg.sender) {
        _mint(msg.sender, 100 * 10 ** 18);
        owner = msg.sender;
    }

    function _mint(address account, uint256 amount) override internal onlyOwner {
        _mint(account, amount);
    }


}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RebaseToken is ERC20 {
    address private owner;
    modifier onlyOwner () {
        require(msg.sender == owner);
        _;
    }

    constructor() ERC20("RebasToken","RBT") {
        _mint(msg.sender, 1000 * 10 ** 18);
        owner = msg.sender;
    }

    function rebase(address receiver) external onlyOwner {
        uint256 currentSupply = totalSupply();
        uint256 newSupply = currentSupply * 2; // 현재 공급량의 2배로 재조정
        _mint(receiver, newSupply - currentSupply); // 새로운 토큰 발행
    }
}
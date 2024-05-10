// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#IERC20
interface IERC20 {
    function totalSupply() external returns (uint256);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
}
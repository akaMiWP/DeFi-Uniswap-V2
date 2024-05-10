// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// https://docs.uniswap.org/contracts/v2/reference/smart-contracts/router-02#swapexacttokensfortokens

interface IUniswapV2Router {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}
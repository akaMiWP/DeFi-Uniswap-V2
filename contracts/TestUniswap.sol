// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./interfaces/IERC20.sol";
import "./interfaces/Uniswap.sol";

contract TestUniswap {

    address private constant UNISWAP_V2_Router = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function swap(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _to
    ) external {   
        IERC20(_tokenIn).transferFrom(msg.sender, address(this), _amountIn);
        IERC20(_tokenIn).approve(UNISWAP_V2_Router, _amountIn);

        address[] memory paths;
        paths = new address[](3);
        paths[0] = _tokenIn;
        paths[1] = WETH;
        paths[2] = _tokenOut;

        IUniswapV2Router(UNISWAP_V2_Router).swapExactTokensForTokens(
            _amountIn,
            _amountOutMin,
            paths,
            _to,
            block.timestamp
        );
    }
}
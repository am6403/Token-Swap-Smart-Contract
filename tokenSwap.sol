//Token Swap Smart Contract

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract TokenSwap {
    event TokensSwapped(address indexed user, address indexed fromToken, uint fromAmount, address indexed toToken, uint toAmount);

    function swapTokens(IERC20 fromToken, IERC20 toToken, uint amount) external {
        require(fromToken != toToken, "Tokens must be different");
        
        uint exchangeRate = 2; 

        uint expectedToAmount = amount * exchangeRate;

        require(toToken.balanceOf(address(this)) >= expectedToAmount, "Not enough tokens in swap contract");

        fromToken.transferFrom(msg.sender, address(this), amount);

        toToken.transfer(msg.sender, expectedToAmount);

        emit TokensSwapped(msg.sender, address(fromToken), amount, address(toToken), expectedToAmount);
    }
}

contract MyToken is ERC20, ERC20Permit {
    constructor() ERC20("MyToken", "MTK") ERC20Permit("MyToken") {}
}

// SPDX-License-Identifier: GPL-3.0

/*
ERC20 tokens provide functionalities to;

1. Transfer tokens
2. Allow others to transfer tokens on behalf of the token holder
*/

pragma solidity >=0.7.0 <0.9.0;

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/IERC20.sol
interface IERC20 {
    function totalSuppy() external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function transfer(address recipient, uint amount) external returns (bool);
    function allownace(address owner, address spender) external view returns (uint);
    function approve(address spender, uint amount) external returns (bool);
    function approveFrom(address sender, address recipient, uint amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint amount);
    event Approval(address indexed owner, address indexed spender, uint amount);
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract link is ERC20("link", "LNK"){
    
    address owner;

  constructor () {
        _mint(msg.sender, 10000e18);
    } 

}
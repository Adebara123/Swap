// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract web3bridge is ERC20("web3bridge", "W3B"){
    
     constructor () {
        _mint(msg.sender, 20000e18);
    } 

}
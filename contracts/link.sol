// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract link is ERC20("link", "LNK"){
    
    address owner;

    constructor () {
        owner = msg.sender;
        _mint(address(this), 10000e18);
    } 

    modifier onlyOwner () {
        require (owner == msg.sender, "not owner");
        _;
    }
    
    function transferOut (address addr, uint  _amount)external onlyOwner  {

        uint bal = balanceOf(address(this));
        require (bal >= _amount , "You cant send more than balance");
        _transfer(address(this), addr , _amount );
    }
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

   interface IERC20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

   contract Swap {
    IERC20 public first_token;
    address public owner1;
    uint public amount1;
    IERC20 public second_token;
    address public owner2;
    uint public amount2;

    constructor(
        address _first_token,
        address _owner1,
        uint _amount1,
        address _second_token,
        address _owner2,
        uint _amount2
    ) {
        first_token = IERC20(_first_token);
        owner1 = _owner1;
        amount1 = _amount1;
        second_token = IERC20(_second_token);
        owner2 = _owner2;
        amount2 = _amount2;
    }

    function swap() public {
        require(msg.sender == owner1 || msg.sender == owner2, "You are not authorized");
        require(
            first_token.allowance(owner1, address(this)) >= amount1,
            "Token 1 allowance too low"
        );
        require(
            second_token.allowance(owner2, address(this)) >= amount2,
            "Token 2 allowance too low"
        );

        swap_Transfer(first_token, owner1, owner2, amount1);
        swap_Transfer(second_token, owner2, owner1, amount2);
    }

    function swap_Transfer(
        IERC20 token,
        address sender,
        address recipient,
        uint amount
    ) private {
        bool sent = token.transferFrom(sender, recipient, amount);
        require(sent, "Token transfer failed");
    }

}
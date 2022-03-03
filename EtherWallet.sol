/ SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract EtherWallet{
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable{

    }

    function withdraw(uint amount) external {
        require(msg.sender==owner, "Caller not recognized!");
        owner.transfer(amount);
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

}

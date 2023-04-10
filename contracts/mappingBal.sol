// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract mappingBank{
    mapping(address => uint) public balanceReceived;

    function sendMoney() public payable{
        // Storing the money in the user's account specifically and not into any other users acc.
        balanceReceived[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAllMoney(address payable to) payable public{
        uint myBalanceSent = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0; 
        to.transfer(myBalanceSent);
    }
}
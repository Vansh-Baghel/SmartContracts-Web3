// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract withDrawalMoney{

    uint public totalBalancedReceived;

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function deposit() public payable{
        totalBalancedReceived += msg.value;
    }
}
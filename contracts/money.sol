// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract withDrawalMoney{

    uint public totalBalancedReceived;

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        // This will transfer all the money to the acc which uses this function.
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawAllToSpecifiedAddress(address payable _to) public {
        // This will transfer all the money to the specified address.
        _to.transfer(getContractBalance());
    }

        function deposit() public payable{
        totalBalancedReceived += msg.value;
    }
}
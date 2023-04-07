// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor() {
        // It will store the address of the sender into manager, where manager will be the new owner of that account.
        manager = msg.sender;
    }

    receive() external payable {
        // Saving the address of the sender into the array.
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint) {
        // Will return the total balance into the manager's account, as manager have all the access, all the amount will be stored there.
        return address(this).balance;
    }

    function randomNum() public view returns (uint) {
        // keccak is a type of hash used for the input data.
        return
            uint(
                keccak256(
                    abi.encodePacked(
                        block.prevrandao,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    function selectWinner() public {
        address payable winner;

        // Checking if the one runnning this function is manager or not. Only manager can run this function.
        require(msg.sender == manager);

        // There must be minimum 2 participants.
        require(participants.length >= 2);

        uint index = randomNum() % participants.length;

        winner = participants[index];
        // Transfering the total amount to the winner's address.
        winner.transfer(getBalance());
        // Restarting the array. Considering size as 0.
        participants = new address payable[](0);
    }
}

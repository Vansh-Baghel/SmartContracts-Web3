# Connect localhost with remix

- Use `npm install -g @remix-project/remixd` to connect the local file system to remix website.

# Different units like ether

- There are different units like wei , kwei, ether.

* The biggest unit is ether amongst it and wei, and kwei are 2 other units which are too smaller than ether.

# Remix VM

- We must set the environment of the remix to Remix VM.
- It gives 10 different accounts with some free ethers into it for testing purpose.

# Ganache

- With ganache, we can run blockchain on our local system.
- We can develop, deploy and run our dcap on our system.

# Provider

- Provider is a network between our system and blockchain.

# ABI

- It is the communication layer between solidity and JS worlds.

# Datatypes in ether

- Following are some commonly used data types in solidity, some others are : mapping, enum, struct, and function.

## uint256

- This is an unsigned integer of 256 bits. It is commonly used for storing values such as balances and timestamps.

## address

- This data type represents a 20-byte Ethereum address. It is used for storing addresses of accounts and contracts.

## bool

- This is a Boolean data type that can have two values - true or false. It is used for storing conditions and flags.

## string

- This data type is used for storing variable-length strings of characters. It is commonly used for storing text such as names and descriptions.

## bytes

- This data type is used for storing arbitrary-length raw bytes. It is commonly used for storing binary data such as hash values.

## array

- This data type is used for storing a collection of values of the same type. It can be either a fixed-size or a dynamic array.

# Payable

- A Solidity function with a payable modifier means that the function is able to process transactions with more than or equal to zero Ether.

# msg.sender

- It is a global variable in Solidity that represents the address of the account that is sending the current transaction.

# receive function

- The receive function in Solidity is a special type of function that can be defined in a contract to receive Ether transfers.
- It can only be used once in the file.

# Fallback function

- It is called when a certain function doesn't exist in the contract.
- Best way to use is when we want to receive ethers or datas.
- It can recover datas which receive function can't.

# view function key in sol

- It is a function is a type of function that does not modify the state of the contract.
- view functions are read-only functions that can be used to fetch data from the blockchain without modifying it.
- They are also known as constant functions in older versions of Solidity.

# require function

- It is just like if condition.

# keccak256 hash

- Keccak256 is a cryptographic function built into solidity. This function takes in any amount of inputs and converts it to a unique 32 byte hash.

# block.prevrandao (uint)

- random number provided by the beacon chain.

# block.timestamp (uint)

- current block timestamp as seconds.

# payable 
* It is the function which will receive eth.

# msg.sender
* Address of the sender.
    
# msg.value 
* Amount of eth sent.

# mapping
* Its like an array of solidity.
* Example: Storing balance of multiple users by an index.

# require
* It will check a certain condition and will return a custom message if we want which will let us show the expected output.

# assert
* It is same as require but it throws the Panic attack which means it will use all the available gas.

# try/catch in solidity
* We also have this in sol which could be used inside a function.
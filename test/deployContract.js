const { evm, abi } = require("../compile.js");
const assert = require("assert");
const ganache = require("ganache-cli");
const Web3 = require("web3");
const web3 = new Web3(ganache.provider());
const bytecode = evm.bytecode.object;

it("GetAccounts", async () => {
  // Getting all the accounts (Here which are provided by ganache)
  const accs = await web3.eth.getAccounts();

  //   Using one account to deploy the contract.
  const deployContract = await new web3.eth.Contract(abi)
    .deploy({ data: bytecode })
    .send({ from: accs[0], gas: "1000000" }).on('receipt', (receptDetails) => {
        console.log("Deployed Contract Address: " , receptDetails.contractAddress);
    });

  console.log(deployContract);
});
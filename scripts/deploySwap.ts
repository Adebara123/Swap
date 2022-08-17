import { ethers } from "hardhat";

async function main() {

    // deploying web3bridge token and getting the contract address
  const SWAP = await ethers.getContractFactory("Swap");
  const swap = await SWAP.deploy();

  await swap.deployed();

  console.log(`Your link contract address is ${swap.address}`);

     
  // interacting with the contract
  // const contract_address = ""; 
  // const SWAP = await ethers.getContractFactory("Swap");
  // const interactSwap = SWAP.attach("contract_address");
  // const approve = interactSwap.approve()

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
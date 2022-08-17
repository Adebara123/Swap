import { ethers } from "hardhat";

async function main() {

    // deploying web3bridge token and getting the contract address
  const WEB3BRDGE = await ethers.getContractFactory("web3brdge");
  const web3bridge = await WEB3BRDGE.deploy();

  await web3bridge.deployed();

  console.log(`Your link contract address is ${web3bridge.address}`);

     
  // interacting with the contract
  // const contract_address = ""; 
  // const WEB3BRDGE = await ethers.getContractFactory("web3brdge");
  // const interactWeb3bridge = WEB3BRDGE.attach("contract_address");
  // const approve = interactWeb3bridge.approve()

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


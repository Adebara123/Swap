import { ethers } from "hardhat";

async function main() {


  const lockedAmount = ethers.utils.parseEther("1");

  const CONTRACT_ADDRESS = "";

  const Lock = await ethers.getContractFactory("Lock", CONTRACT_ADDRESS);
  const lock = await Lock.deploy();

  await lock.deployed();

  console.log(`Your contract address is ${lock.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

import { ethers } from "hardhat";

async function main() {

    // deploying link token and getting the contract address
  const Link = await ethers.getContractFactory("link");
  const link = await Link.deploy();

  await link.deployed();

  // EOA = "0x85f20a6924A61904AB44243C7e2c771B3bE46734"
  // my contract address = 0xd72A38C073BEf87216AC712359e8308E16142A3F

  console.log(`Your link contract address is ${link.address}`);


    // interacting with the contract
  // const contract_address = ""; 
  // const Link = await ethers.getContractFactory("link");
  // const interactLink = Link.attach("contract_address");
  // const approve = interactLink.approve()

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


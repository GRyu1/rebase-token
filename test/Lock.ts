import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import hre from "hardhat";

describe("Test", function () {
  async function deployTest1Fixture() {
    const [owner, otherAccount] = await hre.ethers.getSigners();

    const Test1 = await hre.ethers.getContractFactory("RebaseToken");
    const test1 = await Test1.deploy();

    return { test1, owner, otherAccount };
  }


 
});

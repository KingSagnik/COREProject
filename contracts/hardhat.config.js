require("@nomicfoundation/hardhat-toolbox"); // This includes hardhat-ethers, chai, etc.
// or, if you want only ethers:
require("@nomicfoundation/hardhat-ethers");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    core: {
      url: "https://rpc.test2.btcs.networkg", // Example: CORE mainnet RPC
      chainId: 1114, // Example: CORE mainnet chain ID
      accounts: ["add611716697fa0d59513b2dfd6ec78f58c4eec551cec6102f89faba044f1c36"] // Replace with your deployer wallet's private key
    }
  }
};

const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("Deployment", (m) => {
  let testUniswap = m.contract("TestUniswap");
  return { testUniswap };
});

// Required for Rinkeby deployment 
var HDWalletProvider = require("truffle-hdwallet-provider");
const PRIVATE_KEY = process.env.MNEMONIC
const INFURA_KEY = process.env.INFURA_KEY

if (!PRIVATE_KEY || !INFURA_KEY) {
  console.error("Please set the private key and infura key.")
  return
}

var rinkeby_json_rpc = "https://rinkeby.infura.io/v3/" + INFURA_KEY;


module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: () => new HDWalletProvider(PRIVATE_KEY, rinkeby_json_rpc),
      gasPrice: 50000000000, // 50 gwei,
      gas: 4600000,
      network_id: 4,
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
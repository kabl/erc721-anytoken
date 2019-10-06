// Required for Rinkeby deployment 
var HDWalletProvider = require("truffle-hdwallet-provider");
const PRIVATE_KEY = "<PRIVATE_KEY>"
const INFURA_KEY = "<INFURA_KEY>"


var rinkeby_json_rpc = "https://rinkeby.infura.io/v3/" + INFURA_KEY;
var mainnet_json_rpc = "https://mainnet.infura.io/v3/" + INFURA_KEY;


module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: () => new HDWalletProvider(PRIVATE_KEY, rinkeby_json_rpc),
      gasPrice: 15000000000, // 50 gwei,
      gas: 4600000,
      network_id: 4,
    },
    mainnet: {
      provider: () => new HDWalletProvider(PRIVATE_KEY, mainnet_json_rpc),
      gasPrice: 15000000000, // 50 gwei,
      gas: 4600000,
      network_id: 1,
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
# README AnyNFTToken

Tokenized Any Token

## Requirements

Following tools are required:

- Truffle
- NPM

The first time you checkout the project run a `npm install`.

## Deployment to Rinkeby

Checkout `truffle-config.js`

```bash
export INFURA_KEY="<infura_key>"
export PRIVATE_KEY="<private_key>"
# Deploy to the 'rinkeby' network
# Set your private key in the 'truffle-config.js' file
truffle deploy --network rinkeby
```

## Deployment History

2019-09-27 First

```text
2_deploy_nft.js
===============
   Replacing 'AnyNFTToken'
   -----------------------
   > transaction hash:    0x038a3171e27c78d5c73f7689f359aae48c43708ef76923a5e404d0b9260e434e
   > Blocks: 0            Seconds: 9
   > contract address:    0x2560304b12e5a8A357F2A351F3a9b848C34a9759
   > block number:        5162330
   > block timestamp:     1569573872
   > account:             0x3dC2cb9ffbD1DF947E19ED308D9a7EAF98410426
   > balance:             3.711674476
   > gas used:            2659730
   > gas price:           50 gwei
   > value sent:          0 ETH
   > total cost:          0.1329865 ETH
```

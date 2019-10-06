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

### 2019-09-30 First (Main Net)

```text
2_deploy_any.js
===============

   Deploying 'AnyToken'
   --------------------
   > transaction hash:    0x08087ba5361ccc9737b9fc6d93d784892aa8e6da3b346f184a8574e7dee39ce4
   > Blocks: 0            Seconds: 14
   > contract address:    0xc86AD6244B539D87e77D0d7a5aD7cB6ca9E69eDd
   > block number:        8652160
   > block timestamp:     1569874486
   > account:             0x3dC2cb9ffbD1DF947E19ED308D9a7EAF98410426
   > balance:             0.03642784
   > gas used:            4238144
   > gas price:           15 gwei
   > value sent:          0 ETH
   > total cost:          0.06357216 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.06357216 ETH


Summary
=======
> Total deployments:   1
> Final cost:          0.06357216 ETH
```

### 2019-09-30 Second (Rinkeby)

```text
2_deploy_any.js
===============

   Deploying 'AnyToken'
   --------------------
   > transaction hash:    0x816d3adc50452c76f57cb45ee80e7c1fc477ecd336896a99686c4f788ba37166
   > Blocks: 0            Seconds: 9
   > contract address:    0x52Ed638D50f5B5825a98552615648c6dd167b5AC
   > block number:        5182357
   > block timestamp:     1569874332
   > account:             0x3dC2cb9ffbD1DF947E19ED308D9a7EAF98410426
   > balance:             2.587850704527011172
   > gas used:            4238144
   > gas price:           15 gwei
   > value sent:          0 ETH
   > total cost:          0.06357216 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.06357216 ETH
```

### 2019-09-27 First (Rinkeby)

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

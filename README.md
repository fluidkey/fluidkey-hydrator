Fluidkey Hydrator
-----------------

             !
            /@\
           /@@@\
          { ^_^ }
          \@@@@@/
            """

The Fluidkey Hydrator is optimized to deploy 1/1 v1.3.0 Safes with minimal gas costs on L2s.

Deployment address: `0x1a93629bfcc6e9c7241e587094fae26f62503fad`

Deployed on:
- [Optimism](https://optimistic.etherscan.io/address/0x1a93629bfcc6e9c7241e587094fae26f62503fad)
- [Base](https://basescan.org/address/0x1a93629bfcc6e9c7241e587094fae26f62503fad)
- [Arbitrum](https://arbiscan.io/address/0x1a93629bfcc6e9c7241e587094fae26f62503fad)
- [Sepolia](https://sepolia.etherscan.io/address/0x1a93629BFcc6E9c7241E587094FAE26F62503FaD)

Usage
-----

To deploy a 1/1 Safe, call the `deploySafe` function with the `signerAddress`, a bytes32 value starting with the address of the signer, e.g. `0x38064551a016f1fe770d7fbbe1ee02afc9080260000000000000000000000000`

> [!NOTE] 
> This method does not support adding a salt and can therefore only be used to deploy a single Safe per address.
> Also note that this contract deploys Safes using the Safe factory deployed at `0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2`, which is not the canonical Safe factory on all chains.

Deploying the contract on other chains
--------------------------------------

To deploy the contract on other chains:
1. Install [Foundry](https://book.getfoundry.sh/)
2. Clone this repository
3. Set your deployer private key in a .env file in this repository
4. Add block explorer API keys to the `foundry.toml` file
5. Run the following command:
```shell
forge script script/FluidkeyHydrator.s.sol:Create2Deployment --rpc-url YOUR_RPC_URL --broadcast --verify -vvvv
```

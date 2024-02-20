// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {FluidkeyHydrator} from "src/FluidkeyHydrator.sol";

contract Create2Deployment is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        FluidkeyHydrator hydrator = new FluidkeyHydrator{salt: bytes32("f100ed4ee")}();
    }
}

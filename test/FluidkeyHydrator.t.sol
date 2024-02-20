// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {FluidkeyHydrator} from "src/FluidkeyHydrator.sol";

contract CounterTest is Test {
    Hydrator public hydrator;

    function setUp() public {
        hydrator = new Hydrator();
    }

    function test_callOtherContract() public {
        hydrator.deploySafe(hex"D2661728b35916D0A15834c558D4e6E3b7567f76");
    }
}

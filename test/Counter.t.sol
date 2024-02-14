// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {MyContract} from "../src/Counter.sol";

contract CounterTest is Test {
    MyContract public safeDeployer;

    function setUp() public {
        safeDeployer = new MyContract();
    }

    function test_callOtherContract() public {
        safeDeployer.deploySafe(address(0xD2661728b35916D0A15834c558D4e6E3b7567f76));
        // safeDeployer.decompressHuff(
        //     hex"083c001688f0b9100014d9db270c1b5e3bd161e8c8503c55ceabee709552b9590201642104b63e800d30e830e0591e0140000000000000000000000000f48f2b2d2a534e402487b3ee7c18c33a2104ec0fe5e45959591d0100000000000000000000000059362c7920023cc9ca8a7e98b5e1e05c2104b431ae285914a6b71e26c5e0845f74c812102ca7114b6a896ab2"
        // );
    }
}

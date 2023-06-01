// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IBeraV3PoolDeployer {
    function parameters()
        external
        view
        returns (
            address factory,
            address token0,
            address token1,
            uint24 fee,
            int24 tickSpacing
        );

    function deploy(
        address factory,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing
    ) external returns (address pool);
}

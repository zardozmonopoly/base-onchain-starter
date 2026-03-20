
# Base Onchain Starter 🔵

A smart contract starter kit built for the [Base](https://base.org) L2 network (Ethereum Layer 2 by Coinbase).

## Overview

This repository contains foundational smart contracts and configuration for deploying on Base mainnet and Base Sepolia testnet.

## Network Configuration

| Network | Chain ID | RPC URL |
|---|---|---|
| Base Mainnet | 8453 | https://mainnet.base.org |
| Base Sepolia | 84532 | https://sepolia.base.org |

## Contracts

- `SimpleStorage.sol` — Basic storage contract for Base deployment
- `BaseGreeter.sol` — Greeter contract with onchain message storage

## Getting Started
```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network base
```

## Resources

- [Base Docs](https://docs.base.org)
- [Base Bridge](https://bridge.base.org)
- [BaseScan](https://basescan.org)

## License

MIT

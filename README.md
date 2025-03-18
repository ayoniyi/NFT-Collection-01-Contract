# NFT Collection Smart Contract

This project implements an ERC721-based NFT collection smart contract with additional features like token nicknaming and role-based permissions. Built using ThirdWeb's contract framework and Hardhat development environment.

## Features

- ERC721 standard implementation for NFT collection
- Role-based access control for administrative functions
- Token nickname functionality
- Royalty support for secondary sales
- Built on ThirdWeb's contract framework
- ZKSync network support

## Prerequisites

- Node.js (v14 or higher)
- Yarn or npm package manager
- Basic understanding of Solidity and smart contracts

## Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd NFT-Collection-01-Contract
```

2. Install dependencies:

```bash
yarn install
# or
npm install
```

## Project Structure

```
├── contracts/
│   └── collectionOne.sol    # Main NFT collection contract
├── hardhat.config.js        # Hardhat configuration
├── package.json            # Project dependencies and scripts
└── README.md               # Project documentation
```

## Contract Features

### Main Contract: collectionOne.sol

- Inherits from ThirdWeb's `ERC721Base` and `PermissionsEnumerable`
- Implements role-based access control
- Supports token nicknaming functionality
- Includes royalty support for secondary sales

### Roles

- `DEFAULT_ADMIN_ROLE`: Administrative access
- `NICKNAMER_ROLE`: Permission to update token nicknames

## Development

### Building the Project

To compile the smart contracts:

```bash
yarn build
# or
npm run build
```

### Deploying Contracts

To deploy the contracts to your chosen network:

```bash
yarn deploy
# or
npm run deploy
```

### Releasing Contracts

To release a version of your contracts publicly:

```bash
yarn release
# or
npm run release
```

## Contract Usage

### Setting Up the Contract

When deploying, you'll need to provide:

- Collection name
- Collection symbol
- Royalty recipient address
- Royalty basis points (bps)

### Managing Tokens

1. **Minting NFTs**: Use the standard ERC721 minting functions
2. **Updating Nicknames**: Only users with the `NICKNAMER_ROLE` can update token nicknames
3. **Managing Roles**: Use the role management functions from `PermissionsEnumerable`

## Network Support

This project is configured to work with:

- ZKSync network
- Other EVM-compatible networks

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## Support

For questions and support:

- Join the ThirdWeb Discord: [https://discord.gg/thirdweb](https://discord.gg/thirdweb)
- Open an issue in the repository

## License

This project is licensed under the MIT License - see the LICENSE file for details.

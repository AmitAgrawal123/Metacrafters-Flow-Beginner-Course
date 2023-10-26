# Human Information Smart Contract

## Description

The Human Information Smart Contract is a blockchain-based application built using the Cadence programming language. It enables the storage and retrieval of information about individuals, such as their names and unique identifiers. This README provides an overview of the contract, its functions, and how to interact with it.

## Getting Started

### Prerequisites

Before using the Human Information Smart Contract, make sure you have the following:

- A connection to a Flow blockchain network.
- A Flow-compatible wallet for transaction signing.

### Usage

1. **Deploy the Smart Contract:**
   - Deploy the smart contract to a Flow blockchain network.

2. **Interact with the Smart Contract:**
   - Connect your Flow-compatible wallet to the deployed smart contract.
   - Use the provided functions to interact with the Human Information Smart Contract.

### Functions and Features

The smart contract provides the following functions:

- **`addHuman(name: String, id: UInt64)`**:
  - Allows users to add information about a human to the contract's dictionary.

- **`getHuman(id: UInt64)`:**
  - Allows users to retrieve information about a human based on their unique identifier.

- **`init()`:**
  - Initializes the contract and sets up an empty dictionary for storing human information.

### Author

- Amit

### License

This project is open-source and is licensed under the MIT License. See the LICENSE file for details.

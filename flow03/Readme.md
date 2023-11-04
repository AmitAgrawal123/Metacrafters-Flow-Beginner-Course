# DataHolder Contract

The DataHolder contract is a smart contract designed to be deployed on the Flow blockchain. It allows for the storage and retrieval of user-specific data.

## Contract - DataHolder

The DataHolder contract is a key component of this system. It offers the following functionalities:

- `data` is a dictionary that stores `DataDetails` for each user's Flow address. This data structure allows for the association of user addresses with their respective data.

- `DataDetails` is a struct that encapsulates user-specific information, including `district`, `wardNo`, `jila`, `houseNo`, `colonyName`, and `account`.

- `init()` serves as the constructor for the contract, initializing the `data` dictionary as an empty collection when the contract is deployed.

- `storeData(...)` is a public function that permits the contract owner to store user data. It accepts parameters like `district`, `wardNo`, `jila`, `houseNo`, `colonyName`, and `account`, creating a new `DataDetails` struct to store this data. The data is then associated with the provided user's account in the `data` dictionary.

## Transaction - DataInput

The DataInput transaction enables users to submit their data to the DataHolder contract. Here's how it works:

- `transaction(...)`: Named DataInput, this transaction receives parameters such as `district`, `wardNo`, `jila`, `houseNo`, `colonyName`, and `account`, allowing users to submit their data.

- `prepare(signer: AuthAccount)`: This part ensures that the transaction is prepared and signed by an authorized account (the user), logging the signer's information.

- `execute { ... }`: Within the `execute` block, the `storeData` function of the DataHolder contract is called with the provided data. This action stores the user's data in the contract's `data` dictionary, and a success message is logged to confirm the data storage.

## Scripts - DataOutput

The DataOutput script is designed for retrieving user data from the DataHolder contract:

- `pub fun retrieveData(account: Address)`: This function takes a user's `account` as a parameter and retrieves their data from the `data` dictionary. It returns the `DataDetails` associated with the provided account.

This contract and its associated transaction and script provide a secure and tamper-proof way to store and retrieve user-specific information on the Flow blockchain.

## Authors

amit

## License

This project is licensed under the MIT License. For full details, refer to the LICENSE.md file.


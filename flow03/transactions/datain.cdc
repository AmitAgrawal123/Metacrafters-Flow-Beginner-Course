// Transaction - DataInput

import DataHolder from 0x05

transaction(district: String, wardNo: UInt64, jila: String, houseNo: UInt64, colonyName: String, account: Address) {
    prepare(signer: AuthAccount) {
        log(signer)
    }

    execute {
        DataHolder.storeData(district: district, wardNo: wardNo, jila: jila, houseNo: houseNo, colonyName: colonyName, account: account)
        log("Data stored successfully!")
    }
}

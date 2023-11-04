// Contract - DataHolder

pub contract DataHolder {
    pub var data: {Address: DataDetails}
    
    pub struct DataDetails {
        pub let district: String
        pub let wardNo: UInt64
        pub let jila: String
        pub let houseNo: UInt64
        pub let colonyName: String
        pub let account: Address
        
        init(_district: String, _wardNo: UInt64, _jila: String, _houseNo: UInt64, _colonyName: String, _account: Address) {
            self.district = _district
            self.wardNo = _wardNo
            self.jila = _jila
            self.houseNo = _houseNo
            self.colonyName = _colonyName
            self.account = _account
        }
    }
    
    pub fun storeData(district: String, wardNo: UInt64, jila: String, houseNo: UInt64, colonyName: String, account: Address) {
        let newData = DataDetails(_district: district, _wardNo: wardNo, _jila: jila, _houseNo: houseNo, _colonyName: colonyName, _account: account)
        self.data[account] = newData
    }
    
    init() {
        self.data = {}
    }
}
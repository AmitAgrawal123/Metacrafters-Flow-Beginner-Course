import PersonInformationContract from 0x05

transaction(addPerson: String, personID: UInt64) {
    
    prepare(acct: AuthAccount) {}

    execute {
        PersonInformationContract.addPerson(fullName: addPerson, personID: personID)
        log("Person Added")
    }
}

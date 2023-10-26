pub contract PersonInformationContract {

    pub struct Person {
        pub let fullName: String
        pub let personID: UInt64

        init(fullName: String, personID: UInt64) {
            self.fullName = fullName
            self.personID = personID
        }
    }

    pub var people: {UInt64: Person}

    init() {
        self.people = {}
    }

    pub fun addPerson(fullName: String, personID: UInt64) {
        let person = Person(fullName: fullName, personID: personID)
        self.people[personID] = person
    }

    pub fun getPerson(personID: UInt64): Person? {
        return self.people[personID]
    }
}

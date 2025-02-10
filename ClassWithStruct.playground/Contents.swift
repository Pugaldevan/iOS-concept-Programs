import UIKit

// Class with Struct;
class Address {
    
    var area: String
    var postalCode: Int
    
    init(area: String, postalCode: Int) {
        self.area = area
        self.postalCode = postalCode
    }
}

struct PersonDetail {
    var name: String
    var address: Address
}

var personDetail = PersonDetail(name: "Mark", address: Address(area: "Delhi", postalCode: 62727))
var personDetail1 = personDetail
personDetail1.address.area = "Banaglore"
print(personDetail.address.area) // Bangalore
print(personDetail1.address.area) // Bangalore

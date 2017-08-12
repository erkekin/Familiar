//
//  FamiliarDemoTests.swift
//  FamiliarDemoTests
//
//  Created by ICterra on 12/08/2017.
//  Copyright © 2017 Erk Ekin. All rights reserved.
//

import XCTest
@testable import FamiliarDemo

class FamiliarDemoTests: XCTestCase {
    
    func testNumbers(){
        let items = (1...10).map{"\($0)"}
        let familiarItems = ["2","5","3"]
        let familiar = Familiar(items: items, familiarItems: familiarItems)
        XCTAssert(familiar.text!.contains("9 others"))
        XCTAssert(familiarItems.filter{familiar.text!.contains($0)}.count > 0)
    }
    
    func testStates(){
        let someStates = [ "Alaska",
                           "Alabama",
                           "Arkansas",
                           "American Samoa",
                           "Arizona",
                           "California",
                           "Kentucky",
                           "Louisiana",
                           "Massachusetts",
                           "Maryland",
                           "Maine",
                           "Michigan",
                           "Minnesota",
                           "Missouri",
                           "Mississippi",
                           "Montana",
                           "North Carolina",
                           "North Dakota",
                           "Nebraska",
                           "New Hampshire",
                           "New Jersey",
                           "New Mexico",
                           "Nevada",
                           "New York",
                           "Ohio",
                           "Oklahoma",
                           "Oregon",
                           "Pennsylvania",
                           "Puerto Rico",
                           "Rhode Island",
                           "South Carolina",
                           "South Dakota",
                           "Tennessee",
                           "Texas",
                           "Utah",
                           "Virginia",
                           "Virgin Islands",
                           "Vermont",
                           "Washington",
                           "Wisconsin",
                           "West Virginia",
                           "Wyoming"]
        
        let myFavs =  [ "Alaska",
                        "Alabama",
                        "Arkansas",
                        "American Samoa",
                        "Arizona",
                        "California",
                        "Colorado",
                        "Connecticut",
                        "District of Columbia",
                        "Delaware"]
        
        let maxFamiliarCount = 3
        
        let familiar = Familiar(items: someStates, familiarItems: myFavs, maxFamiliarCount:maxFamiliarCount)
        XCTAssert(familiar.text!.contains("39 others"))
        XCTAssert(myFavs.filter{familiar.text!.contains($0)}.count > 0)
    }
    
    
}

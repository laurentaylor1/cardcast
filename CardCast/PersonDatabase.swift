//
//  PersonDatabase.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class PeopleDatabase {
    
    var peopleNearby: [Person] = []
    
    func getPeople() -> [Person] {
        var tempPeopleNearby: [Person] = []
        
        let personNearby1 = Person(image: UIImage(imageLiteralResourceName: "user-1"), name: "Lauren Taylor", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby2 = Person(image: UIImage(imageLiteralResourceName: "user-2"), name: "Nuha Jackson", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby3 = Person(image: UIImage(imageLiteralResourceName: "user-3"), name: "Perry Black", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby4 = Person(image: UIImage(imageLiteralResourceName: "user-4"), name: "Marc Nevin", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby5 = Person(image: UIImage(imageLiteralResourceName: "user-5"), name: "Matt Smith", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby6 = Person(image: UIImage(imageLiteralResourceName: "user-6"), name: "Susan Lester", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby7 = Person(image: UIImage(imageLiteralResourceName: "user-7"), name: "Richard Walker", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby8 = Person(image: UIImage(imageLiteralResourceName: "user-8"), name: "Kris Brown", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby9 = Person(image: UIImage(imageLiteralResourceName: "user-9"), name: "Evis Howell", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby10 = Person(image: UIImage(imageLiteralResourceName: "user-10"), name: "Barry Jones", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby11 = Person(image: UIImage(imageLiteralResourceName: "user-11"), name: "Marty Harrods", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby12 = Person(image: UIImage(imageLiteralResourceName: "user-12"), name: "Anne White", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby13 = Person(image: UIImage(imageLiteralResourceName: "user-13"), name: "Mark Bower", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby14 = Person(image: UIImage(imageLiteralResourceName: "user-14"), name: "Andrea Mohammed", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby15 = Person(image: UIImage(imageLiteralResourceName: "user-15"), name: "Abi Colligan", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby16 = Person(image: UIImage(imageLiteralResourceName: "user-16"), name: "Lucy Johnson", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby17 = Person(image: UIImage(imageLiteralResourceName: "user-17"), name: "Sophie Manor", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby18 = Person(image: UIImage(imageLiteralResourceName: "user-18"), name: "James Ginn", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby19 = Person(image: UIImage(imageLiteralResourceName: "user-19"), name: "Kim Faulkner", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby20 = Person(image: UIImage(imageLiteralResourceName: "user-20"), name: "Andrew McNally", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let personNearby21 = Person(image: UIImage(imageLiteralResourceName: "user-21"), name: "Matthew Smith", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        
        tempPeopleNearby.append(personNearby1)
        tempPeopleNearby.append(personNearby2)
        tempPeopleNearby.append(personNearby3)
        tempPeopleNearby.append(personNearby4)
        tempPeopleNearby.append(personNearby5)
        tempPeopleNearby.append(personNearby6)
        tempPeopleNearby.append(personNearby7)
        tempPeopleNearby.append(personNearby8)
        tempPeopleNearby.append(personNearby9)
        tempPeopleNearby.append(personNearby10)
        tempPeopleNearby.append(personNearby11)
        tempPeopleNearby.append(personNearby12)
        tempPeopleNearby.append(personNearby13)
        tempPeopleNearby.append(personNearby14)
        tempPeopleNearby.append(personNearby15)
        tempPeopleNearby.append(personNearby16)
        tempPeopleNearby.append(personNearby17)
        tempPeopleNearby.append(personNearby18)
        tempPeopleNearby.append(personNearby19)
        tempPeopleNearby.append(personNearby20)
        tempPeopleNearby.append(personNearby21)
        
        return tempPeopleNearby
    }
}

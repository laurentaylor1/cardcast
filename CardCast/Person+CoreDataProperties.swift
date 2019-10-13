//
//  Person+CoreDataProperties.swift
//  CardCast
//
//  Created by Lauren Taylor on 13/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var bio: String?
    @NSManaged public var colour: String?
    @NSManaged public var image: NSData?
    @NSManaged public var id: UUID?

}

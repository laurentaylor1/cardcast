//
//  SavedBusinessCard+CoreDataProperties.swift
//  CardCast
//
//  Created by Lauren Taylor on 14/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//
//

import Foundation
import CoreData


extension SavedBusinessCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SavedBusinessCard> {
        return NSFetchRequest<SavedBusinessCard>(entityName: "SavedBusinessCard")
    }

    @NSManaged public var name: String?
    @NSManaged public var bio: String?
    @NSManaged public var colour: NSObject?
    @NSManaged public var image: NSData?
    @NSManaged public var id: UUID?

}

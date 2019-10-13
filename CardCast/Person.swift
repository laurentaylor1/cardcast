//
//  Person.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class Person {
    
    var id: UUID
    var image: UIImage
    var name: String
    var bio: String
    var colour: UIColor
    
    init(image: UIImage, name: String, bio: String, colour: UIColor) {
        self.id = UUID()
        self.image = image
        self.name = name
        self.bio = bio
        self.colour = colour
    }
}

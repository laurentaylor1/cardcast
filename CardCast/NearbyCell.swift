//
//  NearbyCell.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class NearbyCell: UITableViewCell {
    
    @IBOutlet weak var nearbyNameLabel: UILabel!
    @IBOutlet weak var nearbyBioLabel: UILabel!
    @IBOutlet weak var nearbyImageView: UIImageView!
    
    var person: Person?
    
    func setNearby(personNearby: Person) {
        self.person = personNearby
        
        nearbyImageView.image = personNearby.image
        nearbyNameLabel.text = personNearby.name
        nearbyBioLabel.text = personNearby.bio
    }
}

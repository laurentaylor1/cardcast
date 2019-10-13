//
//  WalletCell.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class WalletCell: UICollectionViewCell {

    @IBOutlet weak var walletImageView: UIImageView!
    @IBOutlet weak var walletNameLabel: UILabel!
    @IBOutlet weak var walletBioLabel: UILabel!
   
    var person: Person?
    
    func setNearby(personNearby: Person) {
        self.person = personNearby
        walletImageView.image = personNearby.image
        walletNameLabel.text = personNearby.name
    }
}

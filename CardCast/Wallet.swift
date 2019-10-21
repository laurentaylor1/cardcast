//
//  Wallet.swift
//  CardCast
//
//  Created by Lauren Taylor on 21/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class Wallet {
    
    var wallet: [Person] = []
    
    func getWallet() -> [Person] {
        var tempWallet: [Person] = []
        
        let businessCard1 = Person(image: UIImage(imageLiteralResourceName: "user-1"), name: "Lauren Taylor", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard2 = Person(image: UIImage(imageLiteralResourceName: "user-2"), name: "Nuha Jackson", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard3 = Person(image: UIImage(imageLiteralResourceName: "user-3"), name: "Perry Black", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard4 = Person(image: UIImage(imageLiteralResourceName: "user-4"), name: "Marc Nevin", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard5 = Person(image: UIImage(imageLiteralResourceName: "user-5"), name: "Matt Smith", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard6 = Person(image: UIImage(imageLiteralResourceName: "user-14"), name: "Andrea Mohammed", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
        let businessCard7 = Person(image: UIImage(imageLiteralResourceName: "user-15"), name: "Abi Colligan", bio: "Graduate software engineer at Microsoft Dublin. Looking for a new challenging role in a dynamic environment.", colour: RandomColorGenerator(withMixedColor: UIColor.red))
    
        tempWallet.append(businessCard1)
        tempWallet.append(businessCard2)
        tempWallet.append(businessCard3)
        tempWallet.append(businessCard4)
        tempWallet.append(businessCard5)
        tempWallet.append(businessCard6)
        tempWallet.append(businessCard7)
        
        wallet = tempWallet
   
        return tempWallet
    }
}

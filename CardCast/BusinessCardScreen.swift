//
//  BusinessCardScreen.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import SafariServices

class BusinessCardScreen: UIViewController, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personBio: UILabel!
    
    @IBOutlet weak var personImageBorder: UIImageView!
    @IBOutlet weak var summaryBackground: UIImageView!
    @IBOutlet weak var downloadImage: UIImageView!
    
    var person: Person?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupBusinessCardData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBusinessCardData()
    }
    
    private func setupBusinessCardData() {
        guard let person = person else {
            return
        }
        
        personName.text = person.name
        personImage.image = person.image
        personBio.text = person.bio
//        summaryBackground.image = UIImage(imageLiteralResourceName: "card-green")
        summaryBackground.backgroundColor = person.colour
        summaryBackground.layer.cornerRadius = 20;
        
        personImageBorder.image = UIImage(imageLiteralResourceName: "user-border")
        downloadImage.image = UIImage(imageLiteralResourceName: "download3")
    }
    
    private func savePersonToWallet() {
        
    }
}

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
    @IBOutlet weak var saveToWalletButton: UIButton!
    @IBOutlet weak var removeFromWalletButton: UIButton!
    
    var person: Person?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupBusinessCardData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBusinessCardData()
        setButtons()
    }
    
    private func setupBusinessCardData() {
        guard let person = person else {
            return
        }
        
        personName.text = person.name
        personImage.image = person.image
        personBio.text = person.bio
        summaryBackground.backgroundColor = person.colour
        
        summaryBackground.layer.cornerRadius = 20;
        personImageBorder.image = UIImage(imageLiteralResourceName: "user-border")
    }
    
    func setButtons()
    {
        saveToWalletButton.setImage(UIImage(imageLiteralResourceName: "download3"), for: .normal)
        removeFromWalletButton.setImage(UIImage(imageLiteralResourceName: "save-tick-icon"), for: .normal)
        removeFromWalletButton.isHidden = true
    }
    
    @IBAction func saveToWalletTapped(sender: AnyObject)
    {
        saveToWalletButton.isHidden = true
        removeFromWalletButton.isHidden = false
    }
    
    @IBAction func removeFromWalletTapped(sender: AnyObject)
    {
        saveToWalletButton.isHidden = false
        removeFromWalletButton.isHidden = true
    }
}

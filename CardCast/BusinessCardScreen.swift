//
//  BusinessCardScreen.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import SafariServices
import CoreData

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
        
        let alert = UIAlertController(title: "Business card added to wallet", message: nil, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (_) in
            guard let person = self.person else {
                return
            }
            print(person.name)
            
            let newBusinessCard = SavedBusinessCard(context: PersistenceService.context)
            newBusinessCard.id = UUID()
            newBusinessCard.name = self.person?.name
            newBusinessCard.bio = self.person?.bio

            let data = (self.person?.image)!.pngData()
            newBusinessCard.image = data as NSData?
            newBusinessCard.colour = self.person?.colour
            PersistenceService.saveContext()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func removeFromWalletTapped(sender: AnyObject)
    {
        saveToWalletButton.isHidden = false
        removeFromWalletButton.isHidden = true
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        let screenName =  "elonmusk"
        let appURL = NSURL(string: "twitter://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://twitter.com/\(screenName)")!
        
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL as URL) {
            application.open(appURL as URL)
        } else {
            application.open(webURL as URL)
        }
    }
    
    @IBAction func outlookTapped(_ sender: Any) {
        let email = "laurentaylor1@outlook.com"
        if let url = URL(string: "mailto:\(email)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }

    @IBAction func linkedinTapped(_ sender: Any) {
        guard let url = URL(string: "https://www.linkedin.com/in/lauren-taylor-48a15013b/") else { return }
        UIApplication.shared.open(url)
    }
    
   
    @IBAction func githubTapped(_ sender: Any) {
        guard let url = URL(string: "https://github.com/laurentaylor1?tab=repositories") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func mediumTapped(_ sender: Any) {
        guard let url = URL(string: "https://medium.com/@laurentaylor1") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func whatsappTapped(_ sender: Any) {
        
//        let alert = UIAlertController(title: "Do you wish to call 07951600152?", message: nil, preferredStyle: .alert)
        
        let alert = UIAlertController(title: "Call", message: "Do you wish to call 07951600152?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action: UIAlertAction!) in
            print("Handle call logic here")
            
            let busPhone = 07951600152
            if let url = URL(string: "tel://\(busPhone)"), UIApplication.shared.canOpenURL(url) {
                if #available(iOS 10, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(alert, animated: true, completion: nil)
    }
}

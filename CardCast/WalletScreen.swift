//
//  WalletScreen.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit
import CoreData

class WalletScreen: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var people: [Person] = []
    
    var hardCodedWallet: [Person] = []
    var wallet = [SavedBusinessCard]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchRequest: NSFetchRequest<SavedBusinessCard> = SavedBusinessCard.fetchRequest()
        do {
            let wallet = try PersistenceService.context.fetch(fetchRequest)
            self.wallet = wallet
            self.collectionView.reloadData()
        } catch {}
        
        let wallet = Wallet()
        hardCodedWallet = wallet.getWallet()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        do {
            wallet = try context.fetch(SavedBusinessCard.fetchRequest())
        } catch let error as NSError{
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hardCodedWallet.count
    }
    
    // cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:WalletCell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as! WalletCell
        
        cell.walletNameLabel.text = hardCodedWallet[indexPath.row].name
        cell.walletNameLabel.text = hardCodedWallet[indexPath.row].name
        cell.walletImageView.image = hardCodedWallet[indexPath.row].image
        
        cell.backgroundColor = hardCodedWallet[indexPath.row].colour
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    // didSelectItem
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let personCard:BusinessCardScreen = self.storyboard?.instantiateViewController(withIdentifier: "BusinessCardScreen") as! BusinessCardScreen
        
        personCard.person = hardCodedWallet[indexPath.row]
        
        self.navigationController?.pushViewController(personCard, animated: true)
    }
}

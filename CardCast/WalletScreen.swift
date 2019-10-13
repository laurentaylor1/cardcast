//
//  WalletScreen.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class WalletScreen: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let peopleDatabase = PeopleDatabase()
        people = peopleDatabase.getPeople()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    
    // cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:WalletCell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as! WalletCell
        
        cell.walletNameLabel.text = people[indexPath.row].name
        cell.walletImageView.image = people[indexPath.row].image
        
        cell.backgroundColor = RandomColorGenerator(withMixedColor: UIColor.red)
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    // didSelectItem
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let personCard:BusinessCardScreen = self.storyboard?.instantiateViewController(withIdentifier: "BusinessCardScreen") as! BusinessCardScreen
        
        //        personCard.name = people[indexPath.row].name
        //        personCard.image = people[indexPath.row].image
        personCard.person = people[indexPath.row]
        
        self.navigationController?.pushViewController(personCard, animated: true)
    }
}

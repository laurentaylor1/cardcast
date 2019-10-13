//
//  NearbyScreen.swift
//  CardCast
//
//  Created by Lauren Taylor on 12/10/2019.
//  Copyright © 2019 Lauren Taylor. All rights reserved.
//

import UIKit

class NearbyScreen: UIViewController {
    
    @IBOutlet var tableView: UIView!
    //    @IBOutlet weak var tableView: UITableView!
    
    var peopleNearby: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let peopleDatabase = PeopleDatabase()
        peopleNearby = peopleDatabase.getPeople()

//        tableView.delegate = self
//        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // MAKE SURE THE SEGUE EXISTS AND IS CALLED 'ShowBusinessCard'
        if segue.identifier == "ShowBusinessCard" {
            guard let nearbyCell = sender as? NearbyCell else { return }
            guard let person = nearbyCell.person else { return }
            guard let destinationViewController = segue.destination as? BusinessCardScreen else { return }
            destinationViewController.person = person
        }
    }
}

extension NearbyScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleNearby.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nearbyPerson = peopleNearby[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NearbyCell") as! NearbyCell
        
        cell.setNearby(personNearby: nearbyPerson)
        
        return cell
    }
}


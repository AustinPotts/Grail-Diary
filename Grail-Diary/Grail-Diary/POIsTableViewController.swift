//
//  POIsTableViewController.swift
//  Grail-Diary
//
//  Created by Austin Potts on 8/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class POIsTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var placesOfInterest: [POI] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        placesOfInterest.append(POI(location: "Florida", country: "USA", clues: ["Hot"]))
        // Do any additional setup after loading the view.
    }
    


}
//Conform to UITableViewDataSource
extension POIsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesOfInterest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else {return UITableViewCell()}
        
        let poi = placesOfInterest[indexPath.row]
        cell.poi = poi
        
        return cell
    }
    
    
}

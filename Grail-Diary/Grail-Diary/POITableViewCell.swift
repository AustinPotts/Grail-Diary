//
//  POITableViewCell.swift
//  Grail-Diary
//
//  Created by Austin Potts on 8/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class POITableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var cluesLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    

    var poi: POI? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let poi = poi else{return}
        
        locationLabel.text = poi.location
        countryLabel.text = poi.country
        cluesLabel.text = "\(poi.clues.count) POI"
        
    }

}

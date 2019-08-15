//
//  POIDetailViewController.swift
//  Grail-Diary
//
//  Created by Austin Potts on 8/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class POIDetailViewController: UIViewController {

    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesTextView: UITextView!
    
    var placesOfInterest: POI?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews(){
        guard let poi = placesOfInterest else {return}
            
            locationLabel.text = poi.location
            countryLabel.text = poi.country
            var cluesTextView = ""
            for clues in poi.clues {
                // Append each hobby with a bullet point
                // \n will add a "new line charecter", the same thing the enter key does.
                cluesTextView += "• \(clues)\n"
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



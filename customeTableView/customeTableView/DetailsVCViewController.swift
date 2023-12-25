//
//  DetailsVCViewController.swift
//  customeTableView
//
//  Created by Nojood Aljuaid  on 12/06/1445 AH.
//

import UIKit

class DetailsVCViewController: UIViewController {
    
    @IBOutlet weak var cityNameLable: UILabel!
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var detailsView: UITextView!
    
    var city : City!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cityNameLable.text = city.name
        cityImageView.image = city.image
        detailsView.text = city.details
    }
    

    
}

//
//  CityTableViewCell.swift
//  customeTableView
//
//  Created by Nojood Aljuaid  on 12/06/1445 AH.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCity: UIImageView!
    @IBOutlet weak var lableViewCity: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  StationCell.swift
//  Spark2
//
//  Created by Jasmine Jahan on 11/10/22.
//

import UIKit

class StationCell: UITableViewCell {
    
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

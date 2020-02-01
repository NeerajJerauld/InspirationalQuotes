//
//  MyQuotesTVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 27/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class MyQuotesTVC: UITableViewCell {

    @IBOutlet weak var myQuoteContentImage: UIImageView!
    
    @IBOutlet weak var userQuoteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

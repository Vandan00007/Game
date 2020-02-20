//
//  MyDataTableViewCell.swift
//  w10RemoteDatabase
//
//  Created by Vandan  on 11/11/19.
//  Copyright © 2019 Vandan Inc. All rights reserved.
//

import UIKit

class MyDataTableViewCell: UITableViewCell {
    
    @IBOutlet var myName : UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

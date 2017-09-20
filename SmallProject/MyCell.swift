//
//  MyCell.swift
//  SmallProject
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iflame. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell
{
    @IBOutlet weak var Lbl1: UILabel!
    @IBOutlet weak var Lbl2: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

//
//  TVTTableCell.swift
//  TVTest
//
//  Created by Christopher Burns on 8/4/16.
//  Copyright © 2016 Coding Dojo. All rights reserved.
//

import UIKit

class TVTTableCell: UITableViewCell {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myRank: UILabel!
    
    private var _model:(String, Int) = ("", 0)
    
    var model:(String, Int) {
        get {
            return _model
        }
        set {
            _model = newValue
            
            self.myLabel.text = _model.0
            self.myRank.text = String(_model.1)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

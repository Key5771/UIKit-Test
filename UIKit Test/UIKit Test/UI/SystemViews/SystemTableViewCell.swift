//
//  SystemTableViewCell.swift
//  UIKit Test
//
//  Created by 김기현 on 2021/03/12.
//

import UIKit

class SystemTableViewCell: UITableViewCell {
    @IBOutlet weak var systemViewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  TVC-MusicProject.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/21.
//

import UIKit

class MusicProjectTVC: UITableViewCell {
    
    // cell
    static let identifier = "MusicProjectTVC"

    @IBOutlet weak var projectImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

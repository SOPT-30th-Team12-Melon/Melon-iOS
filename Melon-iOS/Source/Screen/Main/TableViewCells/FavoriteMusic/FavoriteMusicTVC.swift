//
//  TVC-FavoriteMusic.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/21.
//

import UIKit

class FavoriteMusicTVC: UITableViewCell {
    
    // MARK: - Vars & Lets Part
    static let identifier = "FavoriteMusicTVC"

    // MARK: - UI Component Part
    @IBOutlet weak var titleLabel: UILabel!

    // MARK: - Life Cycle Part
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - IBAction Part
}

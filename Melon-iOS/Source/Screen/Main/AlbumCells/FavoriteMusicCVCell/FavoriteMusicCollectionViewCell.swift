//
//  FavoriteMusicCollectionViewCell.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/17.
//

import UIKit

class FavoriteMusicCollectionViewCell: UICollectionViewCell {
    
    // cell
    static let identifier = "FavoriteMusicCollectionViewCell"

    @IBOutlet weak var curationLabel: UILabel!
    @IBOutlet weak var themaCoverImage: UIImageView!
    @IBOutlet weak var themaLabel: UILabel!
    @IBOutlet weak var themaHashtagsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ curationData: CurationDataModel) {
        curationLabel.text = curationData.curationTitle
        themaCoverImage.image = curationData.themaImage
        themaLabel.text = curationData.themaTitle
        themaHashtagsLabel.text = curationData.themahashtag
    }

}

//
//  FavoriteMusicItemCVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit

class FavoriteMusicItemCVC: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var hashtag: UILabel!
    
    static let identifier = "FavoriteMusicItemCVC"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(FavoriteMusicItem : FavoriteMusicItemDataModel){
        image.image = UIImage(named: FavoriteMusicItem.imageName)
        title.text = FavoriteMusicItem.title
        hashtag.text = FavoriteMusicItem.hashTag
        
    }

}

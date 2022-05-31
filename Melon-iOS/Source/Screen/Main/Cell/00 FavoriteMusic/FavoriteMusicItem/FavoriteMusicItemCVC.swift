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
    @IBOutlet weak var topic: UILabel!
    @IBOutlet weak var hashTag: UILabel!
    
    static let identifier = "FavoriteMusicItemCVC"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(favoriteMusicItem : FavoriteMusicItemDataModel){
        image.image = UIImage(named: favoriteMusicItem.imageName)
        title.text = favoriteMusicItem.title
        hashTag.text = favoriteMusicItem.hashTag
        topic.text = favoriteMusicItem.topic
        
    }

}

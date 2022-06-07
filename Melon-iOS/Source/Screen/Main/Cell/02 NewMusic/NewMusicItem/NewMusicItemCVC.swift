//
//  NewMusicItemCVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit

class NewMusicItemCVC: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var singer: UILabel!
    
    static let identifier = "NewMusicItemCVC"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(newMusicItemData: NewMusicData){
        image.loadImage(url: URL(string: newMusicItemData.image)!)
        title.text = newMusicItemData.title
        singer.text = newMusicItemData.singer
    }

}

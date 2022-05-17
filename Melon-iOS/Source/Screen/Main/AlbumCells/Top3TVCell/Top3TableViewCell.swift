//
//  Top3TableViewCell.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/17.
//

import UIKit

class Top3TableViewCell: UITableViewCell {
    
    // cell
    static let identifier = "Top3TableViewCell"
    
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var musicArtistLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ musicData: MusicDataModel) {
        albumCoverImage.image = musicData.albumImage
        musicTitleLabel.text = musicData.musicTitle
        musicArtistLabel.text = musicData.artistLabel
    }
    
}

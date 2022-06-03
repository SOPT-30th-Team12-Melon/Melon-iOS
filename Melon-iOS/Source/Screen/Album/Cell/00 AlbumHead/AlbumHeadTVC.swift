//
//  TVC_AlbumHead.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/21.
//

import UIKit

class AlbumHeadTVC: UITableViewCell {
    
    static let identifier = "AlbumHeadTVC"
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var albumDate: UILabel!
    @IBOutlet weak var albumScope: UILabel!
    @IBOutlet weak var numberPeople: UILabel!
    @IBOutlet weak var singerImage: UIImageView!
    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var likeNumber: UILabel!
    @IBOutlet weak var commentNumber: UILabel!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    
    private func dateToString(_ date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sss'Z'"
        let convertDate = dateFormatter.date(from: date)
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy.MM.dd"
        let convertStr = myDateFormatter.string(from:convertDate!)
        return convertStr
    }
    
    private func starImageControl(data: Float){
        switch data{
        case 0..<0.3:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star0")
            star4.image = UIImage(named: "ic_star0")
            star5.image = UIImage(named: "ic_star0")
        case 0.3..<0.8:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star0")
            star4.image = UIImage(named: "ic_star0")
            star5.image = UIImage(named: "ic_star50")
        case 0.8..<1.3:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star0")
            star4.image = UIImage(named: "ic_star0")
            star5.image = UIImage(named: "ic_star100-1")
        case 1.3..<1.8:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star0")
            star4.image = UIImage(named: "ic_star50")
            star5.image = UIImage(named: "ic_star100-1")
        case 1.8..<2.3:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star0")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        case 2.3..<2.8:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star50")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        case 2.8..<3.3:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star0")
            star3.image = UIImage(named: "ic_star100-1")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        case 3.3..<3.8:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star50")
            star3.image = UIImage(named: "ic_star100-1")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        case 3.8..<4.3:
            star1.image = UIImage(named: "ic_star0")
            star2.image = UIImage(named: "ic_star100-1")
            star3.image = UIImage(named: "ic_star100-1")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        case 4.3..<4.8:
            star1.image = UIImage(named: "ic_star50")
            star2.image = UIImage(named: "ic_star100-1")
            star3.image = UIImage(named: "ic_star100-1")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        default:
            star1.image = UIImage(named: "ic_star100-1")
            star2.image = UIImage(named: "ic_star100-1")
            star3.image = UIImage(named: "ic_star100-1")
            star4.image = UIImage(named: "ic_star100-1")
            star5.image = UIImage(named: "ic_star100-1")
        }
    }
    
    func setData(data: AlbumInfoData){
        albumImage.loadImage(url: URL(string: data.albumImage)!)
        albumTitle.text = data.albumTitle
        albumDate.text = dateToString(data.albumDate)
        albumScope.text = String(Float(data.albumScope))
        numberPeople.text = "· " + String(data.numberPeople) + "명"
        singerImage.loadImage(url: URL(string: data.singerImage)!)
        singerName.text = data.singerName
        likeNumber.text = String(data.likeNumber)
        starImageControl(data: Float(data.albumScope))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

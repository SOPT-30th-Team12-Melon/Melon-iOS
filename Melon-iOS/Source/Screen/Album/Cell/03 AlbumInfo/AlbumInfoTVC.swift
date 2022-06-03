//
//  TVC_AlbumInfo.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/21.
//

import UIKit

class AlbumInfoTVC: UITableViewCell {
    
    static let identifier = "AlbumInfoTVC"
    @IBOutlet weak var albumType: UILabel!
    @IBOutlet weak var albumGenre: UILabel!
    @IBOutlet weak var albumDate: UILabel!
    @IBOutlet weak var albumCompany: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var albumContent: UILabel!
    
    private func dateToString(_ date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sss'Z'"
        let convertDate = dateFormatter.date(from: date)
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy.MM.dd"
        let convertStr = myDateFormatter.string(from:convertDate!)
        return convertStr
    }
    
    func setData(data: AlbumInfoData){
        albumType.text = data.albumType
        albumGenre.text = data.albumGenre
        albumDate.text = dateToString(data.albumDate)
        albumCompany.text = data.albumCompany
        company.text = data.company
        albumContent.text = data.albumContent
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

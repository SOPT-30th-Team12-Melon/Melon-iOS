//
//  TVC_Comments.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/21.
//

import UIKit

class CommentsTVC: UITableViewCell {
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var commentBody: UILabel!
    
    static let identifier = "CommentsTVC"
    
    func setData(data:CommentData){
        nickName.text = data.userID.nickName
        commentBody.text = data.commentBody
        userImage.loadImage(url: URL(string: data.userID.image)!)
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

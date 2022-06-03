//
//  CommentsHeaderView.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/26.
//

import UIKit

protocol CommentHeaderViewDelegate{
    func pushToPostView()
}

class CommentsHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var commentsNum: UILabel!

    func setCommentNum(num: Int){
        commentsNum.text = "댓글 " + String(num)
    }
    var delegate: CommentHeaderViewDelegate?
    

    @IBAction func tabCommentBtn(_ sender: Any) {
        if let delegate = delegate {
            delegate.pushToPostView()
        }
    }
    
}

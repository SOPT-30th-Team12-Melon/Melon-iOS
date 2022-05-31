//
//  PostingVC.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit

class PostingVC: UIViewController {
    
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var commentTextView: UITextView!
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func applyButtonDidTap(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setCommentTextView()
    }
    
    func setCommentTextView() {
        commentTextView.textContainerInset = UIEdgeInsets(top: 16,left: 25,bottom: 16,right: 33)
    }

}

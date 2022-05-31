//
//  PostingVC.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit

class PostingVC: UIViewController {
    
    let placeholder = "24시간 이내 스트리밍 감상한 곡에 한하여 작성하신 댓글에 감상 여부가 표기 됩니다.\n감상 후 24시간이 지난 경우, 또는 내부 서비스 환경에 따라 감상 여부의 표기가 안될 수 있습니다."
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var commentTextView: UITextView!
    
    @IBOutlet weak var wordCountLabel: UILabel!
    @IBAction func cancelButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func applyButtonDidTap(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setDelegate()
    }
    
    func setUI() {
        commentTextView.text = placeholder
        commentTextView.textColor = UIColor.gray
        commentTextView.textContainerInset = UIEdgeInsets(top: 16,left: 25,bottom: 16,right: 33)
        commentTextView.tintColor = UIColor.green1
        
        applyButton.titleLabel?.textColor = UIColor.gray
        applyButton.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func setDelegate(){
        commentTextView.delegate = self
    }

}

extension PostingVC: UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            commentTextView.textColor = UIColor.gray
        }else if textView.text == placeholder {
            commentTextView.textColor = UIColor.white
            commentTextView.text = nil
        }
        
    }
    
    
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            commentTextView.textColor = UIColor.gray
            commentTextView.text = placeholder
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if commentTextView.text.count > 1000 {
           commentTextView.deleteBackward()
        }
        
        wordCountLabel.text = "\(commentTextView.text.count) / 1000"
        
        if commentTextView.text !=  ""{
            applyButton.titleLabel?.textColor = UIColor.green1
            applyButton.isUserInteractionEnabled = true
        }else {
            applyButton.titleLabel?.textColor = UIColor.gray
            applyButton.isUserInteractionEnabled = false
        }
    }

}

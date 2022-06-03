//
//  AlbumVC.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit

class AlbumVC: UIViewController {

    @IBOutlet weak var albumTableView: UITableView!
    var sections = [("AlbumHead", 1), ("PlayBtn", 1), ("AlbumInfo", 1), ("AlbumList", 1), ("Comment", 3)]
    let identifiers = [AlbumHeadTVC.identifier, PlayBtnCellTVC.identifier, AlbumListTitleTVC.identifier, AlbumInfoTVC.identifier, CommentsTVC.identifier]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumTableView.delegate = self
        albumTableView.dataSource = self
        registerCell()
    }
    
    private func registerCell(){
        var nib : [UINib] = []
        identifiers.forEach{
            nib.append(UINib(nibName: $0, bundle: nil))
        }
        nib.enumerated().forEach{
            albumTableView.register($1, forCellReuseIdentifier: identifiers[$0])
        }
        
        albumTableView.register(UINib(nibName:"AlbumListHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "AlbumListHeaderView")
        albumTableView.register(UINib(nibName:"CommentsHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CommentsHeaderView")
        
    }
    
    @IBAction func tabBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension AlbumVC : UITableViewDelegate, UITableViewDataSource{
    
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[0], for: indexPath) as? AlbumHeadTVC else {return UITableViewCell()}
            AlbumViewNetwork.shared.getAlbumInfo(albumId: "6290145b6af16276098d04d9"){response in
                switch response{
                case .success(let albumInfoResponse):
                    guard let albumInfoResponse = albumInfoResponse as? AlbumInfoResponse else {return}
                    if let data = albumInfoResponse.data{
                        cell.setData(data: data)
                    } else {
                        return
                    }
                default:
                    return
                }
            }
            return cell
        case 1:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[1], for: indexPath) as? PlayBtnCellTVC else {return UITableViewCell()}
            return cell
        case 2:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[2], for: indexPath) as? AlbumListTitleTVC else {return UITableViewCell()}
            return cell
        case 3:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[3], for: indexPath) as? AlbumInfoTVC else {return UITableViewCell()}
            AlbumViewNetwork.shared.getAlbumInfo(albumId: "6290145b6af16276098d04d9"){response in
                switch response{
                case .success(let albumInfoResponse):
                    guard let albumInfoResponse = albumInfoResponse as? AlbumInfoResponse else {return}
                    if let data = albumInfoResponse.data{
                        cell.setData(data: data)
                    } else {
                        return
                    }
                default:
                    return
                }
            }
            return cell
        case 4:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[4], for: indexPath) as? CommentsTVC else {return UITableViewCell()}
            AlbumViewNetwork.shared.getComments(albumId: "6290145b6af16276098d04d9"){response in
                switch response{
                case .success(let commentResponse):
                    guard let commentResponse = commentResponse as? CommentResponse else {return}
                    if let data = commentResponse.data{
                        cell.setData(data: data[indexPath.row])
                    } else {
                        return
                    }
                default:
                    return
                }
            }

            return cell
        default:
            let cell = UITableViewCell()
            return cell
            
        }
        }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 2{
            guard let headerView = albumTableView.dequeueReusableHeaderFooterView(withIdentifier: "AlbumListHeaderView") as? AlbumListHeaderView else {return UIView()}
            return headerView
        }
        else if section == 4{
            guard let headerView = albumTableView.dequeueReusableHeaderFooterView(withIdentifier: "CommentsHeaderView") as? CommentsHeaderView else {return UIView()}
            headerView.delegate = self
            
            return headerView
        }
        else{
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 2 || section == 4 {
            return UITableView.automaticDimension
        }
        else {
            return 0
        }
    }
}

extension AlbumVC: CommentHeaderViewDelegate{
    func pushToPostView() {
        let storyboard = UIStoryboard(name: "Posting", bundle: Bundle.main)
        guard let postingVC = storyboard.instantiateViewController(withIdentifier: "PostingVC") as? PostingVC else {return}
        postingVC.modalPresentationStyle = .fullScreen
        self.present(postingVC, animated: true)
    }
}


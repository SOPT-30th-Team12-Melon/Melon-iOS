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
        print(1)
        switch indexPath.section{
        case 0:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[0], for: indexPath) as? AlbumHeadTVC else {return UITableViewCell()}
            return cell
        case 1:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[1], for: indexPath) as? PlayBtnCellTVC else {return UITableViewCell()}
            return cell
        case 2:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[2], for: indexPath) as? AlbumListTitleTVC else {return UITableViewCell()}
            return cell
        case 3:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[3], for: indexPath) as? AlbumInfoTVC else {return UITableViewCell()}
            return cell
        case 4:
            guard let cell = albumTableView.dequeueReusableCell(withIdentifier: identifiers[4], for: indexPath) as? CommentsTVC else {return UITableViewCell()}
            return cell
        default:
            let cell = UITableViewCell()
            return cell
            
        }
        }
}


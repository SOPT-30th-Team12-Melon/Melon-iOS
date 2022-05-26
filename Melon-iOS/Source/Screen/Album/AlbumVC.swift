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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumTableView.delegate = self
        albumTableView.dataSource = self
        registerCell()
    }
    
    private func registerCell(){
        let identifiers = [AlbumHeadTVC.identifier, PlayBtnCellTVC.identifier, AlbumListTitleTVC.identifier, AlbumInfoTVC.identifier, CommentsTVC.identifier]
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
        
        var sectionInfo : String = ""
        switch indexPath.section{
        case 0:
            sectionInfo = "TVC_AlbumHead"
        case 1:
            sectionInfo = "TVC_PlayBtnCell"
        case 2:
            sectionInfo = "TVC_AlbumInfo"
        case 3:
            sectionInfo = "TVC_AlbumListTitle"
        case 4:
            sectionInfo = "TVC_Comments"
        default :
            break
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: sectionInfo, for: indexPath)
            
        return cell
        }
}


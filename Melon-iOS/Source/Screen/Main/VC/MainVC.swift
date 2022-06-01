//
//  MainVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit



class MainVC: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    let identifiers = [FavoriteMusicTVC.identifier, MusicProjectTVC.identifier, NewMusicTVC.identifier, Top3TVC.identifier, CustomMusicTVC.identifier ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        registerCell()
    }
    
    private func setDelegate(){
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    

    private func registerCell(){
        var nib : [UINib] = []
        identifiers.forEach{
            nib.append(UINib(nibName: $0, bundle: nil))
        }
        nib.enumerated().forEach{
            mainTableView.register($1, forCellReuseIdentifier: identifiers[$0])
        }
    }
}

extension MainVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return identifiers.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            let width = UIScreen.main.bounds.width
            let tableHeight = width * (319.5/375)
            return tableHeight
        }
        
        else if indexPath.row == 2{
            let width = UIScreen.main.bounds.width
            let tableHeight = width * (300/375)
            return tableHeight
        }
        
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifiers[0], for: indexPath) as? FavoriteMusicTVC else {return UITableViewCell()}
            cell.collectionViewGetReady()
            return cell
        case 1:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifiers[1], for: indexPath) as? MusicProjectTVC else {return UITableViewCell()}
            return cell
        case 2:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifiers[2], for: indexPath) as? NewMusicTVC else {return UITableViewCell()}
            cell.collectionViewGetReady()
            cell.selectNewMusic = {[unowned self] in
                let storyboard = UIStoryboard(name: "Album", bundle: Bundle.main)
                guard let albumVC = storyboard.instantiateViewController(withIdentifier: "AlbumVC") as? AlbumVC else {print("Transition Error!"); return}
                navigationController?.pushViewController(albumVC, animated: true)
            }
            return cell
        case 3:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifiers[3], for: indexPath) as? Top3TVC else {return UITableViewCell()}
            return cell
        case 4:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifiers[4], for: indexPath) as? CustomMusicTVC else {return UITableViewCell()}
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        
        }
    }
}



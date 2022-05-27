//
//  MainVC.swift
//  Melon-iOS
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var mainTV: UITableView!  // 생성한 Table View를 연결
    
    var sections = [
        ("FavoriteMusicTVC", 1),
        ("MusicProjectTVC", 1),
        ("NewMusicTVC", 1),
        ("Top3TVC", 1),
        ("CustomMusicTVC", 1)
    ]
    
    let identifiers = [
        FavoriteMusicTVC.identifier,
        MusicProjectTVC.identifier,
        NewMusicTVC.identifier,
        Top3TVC.identifier,
        CustomMusicTVC.identifier
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTV.delegate = self
        mainTV.dataSource = self
        registerCell()
    }

    private func registerCell(){
        var nib : [UINib] = []
        identifiers.forEach{
            nib.append(UINib(nibName: $0, bundle: nil))
        }
        nib.enumerated().forEach{
            mainTV.register($1, forCellReuseIdentifier: identifiers[$0])
        }
    }
}

// extensinon으로 빼기
extension MainVC : UITableViewDelegate, UITableViewDataSource{
    
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
            guard let cell = mainTV.dequeueReusableCell(withIdentifier: identifiers[0], for: indexPath) as? FavoriteMusicTVC else {return UITableViewCell()}
            return cell
        case 1:
            guard let cell = mainTV.dequeueReusableCell(withIdentifier: identifiers[1], for: indexPath) as? MusicProjectTVC else {return UITableViewCell()}
            return cell
        case 2:
            guard let cell = mainTV.dequeueReusableCell(withIdentifier: identifiers[2], for: indexPath) as? NewMusicTVC else {return UITableViewCell()}
            return cell
        case 3:
            guard let cell = mainTV.dequeueReusableCell(withIdentifier: identifiers[3], for: indexPath) as? Top3TVC else {return UITableViewCell()}
            return cell
        case 4:
            guard let cell = mainTV.dequeueReusableCell(withIdentifier: identifiers[4], for: indexPath) as? CustomMusicTVC else {return UITableViewCell()}
            return cell
        default:
            let cell = UITableViewCell()
            return cell
            
        }
    }
}

//
//  MainVC.swift
//  Melon-iOS
//

import UIKit

enum MainCellCase{
    case header
    case favoriteMusic
    case musicProject
    case newMusic
    case top3
    case customMusic
}


class MainVC: UIViewController {

    @IBOutlet weak var mainTV: UITableView!  // 생성한 Table View를 연결
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let header = UINib(nibName: HeaderTVC.identifier, bundle: nil)
            mainTV.register(header, forCellReuseIdentifier: HeaderTVC.identifier)
        
        let favoriteMusic = UINib(nibName: FavoriteMusicTVC.identifier, bundle: nil)
            mainTV.register(favoriteMusic, forCellReuseIdentifier: FavoriteMusicTVC.identifier)
        
        let musicProject = UINib(nibName: MusicProjectTVC.identifier, bundle: nil)
            mainTV.register(musicProject, forCellReuseIdentifier: MusicProjectTVC.identifier)
        
        let newMusic = UINib(nibName: NewMusicTVC.identifier, bundle: nil)
            mainTV.register(newMusic, forCellReuseIdentifier: NewMusicTVC.identifier)
        
        let top3 = UINib(nibName: Top3TVC.identifier, bundle: nil)
            mainTV.register(top3, forCellReuseIdentifier: Top3TVC.identifier)
        
        let customMusic = UINib(nibName: CustomMusicTVC.identifier, bundle: nil)
            mainTV.register(customMusic, forCellReuseIdentifier: CustomMusicTVC.identifier)
    }
}

// 테이블 뷰의 동작, 모양 담당
extension MainVC: UITableViewDelegate {
    // 높이 지정 index별
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.section == 0) { //HeaderView
            return 252
        }
        else if (indexPath.section == 1) { //EventView
            return 304
        }
        else if (indexPath.section == 2) { //ReviewView
            return 305
        }
        else { //NewsView
            return 609
        }
    }
}

// 데이터 받아서 뷰를 그려줌
extension MainVC: UITableViewDataSource {
    //한 section마다 몇개의 row를 넣어야하는지 지정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 //한 섹션의 한개의 row니까
    }

    // indexPath를 활용해 TableViewcell 별로 데이터를 다르게 지정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //HeaderView
        if (indexPath.section == 0) {
            guard let header = tableView.dequeueReusableCell(withIdentifier: HeaderTVC.identifier) as?
                    HeaderTVC else {return UITableViewCell()}
            return header
        }
        //FavoriteMusic
        else if (indexPath.section == 1) {
            guard let favoriteMusic = tableView.dequeueReusableCell(withIdentifier: FavoriteMusicTVC.identifier) as?
                    FavoriteMusicTVC else {return UITableViewCell()}
            return favoriteMusic
        }
        //MusicProject
        else if (indexPath.section == 2) {
            guard let musicProject = tableView.dequeueReusableCell(withIdentifier: MusicProjectTVC.identifier) as?
                    MusicProjectTVC else {return UITableViewCell()}
            return musicProject
        }
        //NewMusic
        else if (indexPath.section == 3) {
            guard let newMusic = tableView.dequeueReusableCell(withIdentifier: NewMusicTVC.identifier) as?
                    NewMusicTVC else {return UITableViewCell()}
            return newMusic
        }
        //Top3
        else if (indexPath.section == 4) {
            guard let top3 = tableView.dequeueReusableCell(withIdentifier: Top3TVC.identifier) as?
                    Top3TVC else {return UITableViewCell()}
            return top3
        }
        //NewMusic
        else {
            guard let customMusic = tableView.dequeueReusableCell(withIdentifier: CustomMusicTVC.identifier) as?
                    CustomMusicTVC else {return UITableViewCell()}
            return customMusic
        }
    }
}

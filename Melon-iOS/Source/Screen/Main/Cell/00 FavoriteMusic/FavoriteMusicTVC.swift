//
//  FavoriteMusicTVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit

 
class FavoriteMusicTVC: UITableViewCell {
    
    @IBOutlet weak var favoriteMusicCollectionView: UICollectionView!
    static let identifier = "FavoriteMusicTVC"
    var identifiers = [FavoriteMusicItemCVC.identifier]

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setDelegate(){
        favoriteMusicCollectionView.delegate = self
        favoriteMusicCollectionView.dataSource = self
    }
    
    private func registerCell(){
        var nib : [UINib] = []
        identifiers.forEach{
            nib.append(UINib(nibName: $0, bundle: nil))
        }
        nib.enumerated().forEach{
            favoriteMusicCollectionView.register($1, forCellWithReuseIdentifier: identifiers[$0])
        }
        
    }
    
    func collectionViewGetReady(){
        setDelegate()
        registerCell()
    }
}

extension FavoriteMusicTVC : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FavoriteMusicItemDataModel.sampleData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = favoriteMusicCollectionView.dequeueReusableCell(withReuseIdentifier: FavoriteMusicItemCVC.identifier, for: indexPath) as? FavoriteMusicItemCVC else {return UICollectionViewCell()}
        cell.setData(favoriteMusicItem: FavoriteMusicItemDataModel.sampleData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let cellWidth = width * (200/375)
        let cellHeight = cellWidth * (226/200)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
   

    
    
}

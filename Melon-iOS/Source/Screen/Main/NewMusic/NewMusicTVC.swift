//
//  NewMusicTVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit

class NewMusicTVC: UITableViewCell {
    @IBOutlet weak var newMusicCollectionView: UICollectionView!
    
    static let identifier = "NewMusicTVC"
    var identifiers = [NewMusicItemCVC.identifier]

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setDelegate(){
        newMusicCollectionView.delegate = self
        newMusicCollectionView.dataSource = self
    }
    
    private func registerCell(){
        var nib : [UINib] = []
        identifiers.forEach{
            nib.append(UINib(nibName: $0, bundle: nil))
        }
        nib.enumerated().forEach{
            newMusicCollectionView.register($1, forCellWithReuseIdentifier: identifiers[$0])
        }
        
    }
    
    func collectionViewGetReady(){
        setDelegate()
        registerCell()
        print(1)
    }
    
    
    
}
    
extension NewMusicTVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NewMusicItemDataModel.sampleData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = newMusicCollectionView.dequeueReusableCell(withReuseIdentifier: NewMusicItemCVC.identifier, for: indexPath) as? NewMusicItemCVC else {return UICollectionViewCell()}
        cell.setData(newMusicItemData: NewMusicItemDataModel.sampleData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let cellWidth = width * (150/375)
        let cellHeight = cellWidth * (196/150)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    
    
}

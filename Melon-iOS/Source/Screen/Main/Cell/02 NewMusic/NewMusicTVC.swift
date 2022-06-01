//
//  NewMusicTVC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import UIKit



class NewMusicTVC: UITableViewCell {
    @IBOutlet weak var newMusicCollectionView: UICollectionView!
    
    var selectNewMusic: (() -> ())?
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
        let cellHeight = cellWidth * (206/150)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:0, left: 0, bottom: 0, right: 0)
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            selectNewMusic?()
        }
    }
    
    
    
}

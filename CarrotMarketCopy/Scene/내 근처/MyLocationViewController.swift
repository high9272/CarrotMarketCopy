//
//  MyLocationViewController.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/03.
//

import Foundation
import UIKit
import SnapKit


class MyLocationViewController:UIViewController {
    
    private var dataLabel = ["알바", "당근알바", "중고차", "자동차","컨테이너","포켓몬 스티커", "포켓몬 빵"]
    

    lazy var locationSearchBar: UITextField = {
        let searchBar = UITextField()
        searchBar.placeholder = "  주변 가게, 알바, 중고차를 찾아보세요"
        
        searchBar.backgroundColor = .systemGray6
        searchBar.layer.cornerRadius = 8

        return searchBar

    }()
    
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        
        
        
        //flowLayout.estimatedItemSize = CGSize(width: 150, height: 140)// 추정 사이즈 계산
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.systemBackground
        collectionView.register(MyLocationButtonCell.self, forCellWithReuseIdentifier: "MyLocationButtonCell")
        collectionView.showsHorizontalScrollIndicator = false // 스크롤뷰 없애기
        //        collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        return collectionView
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        setupNavigationBar()
        layoutSetup()
        
    }
    
}

extension MyLocationViewController {
    
    func setupNavigationBar(){
        
        
        let locationButton = UIButton(type: .custom)
        locationButton.setTitle("내 근처", for: .normal)
        locationButton.setTitleColor(.label, for: .normal)
        locationButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        let titleBarButton = UIBarButtonItem(customView: locationButton)
        
        
        
        let locationItem = [titleBarButton]
        navigationItem.leftBarButtonItems = locationItem
        
        
        let magnifyButton = UIButton(type: .custom)
        magnifyButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        magnifyButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        let magnifyBarButton = UIBarButtonItem(customView: magnifyButton)
        
        
        let categoryButton = UIButton(type: .custom)
        categoryButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        categoryButton.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
        let categoryBarButton = UIBarButtonItem(customView: categoryButton)
        
        
        let bellButton = UIButton(type: .custom)
        bellButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        let bellBarButton = UIBarButtonItem(customView: bellButton)
        
        let navItems = [bellBarButton,categoryBarButton,magnifyBarButton]
        
        navigationItem.rightBarButtonItems = navItems
        
        
        
        
    }
    
    
    
    
    
}



extension MyLocationViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyLocationButtonCell", for: indexPath) as? MyLocationButtonCell
        //cell?.sizeToFit()
        cell?.setup()
        cell?.rewardButton.setTitle(dataLabel[indexPath.item], for: .normal)
        
        return cell ?? MyLocationButtonCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellSize = CGSize(width: dataLabel[indexPath.item].size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]).width + 20, height: 30)
        
        // 기존 사이즈에 width +20을 준다
        
        return cellSize
    }
    
}

extension MyLocationViewController: UICollectionViewDelegate {
    
}


extension MyLocationViewController {
    func layoutSetup(){
        view.addSubview(locationSearchBar)
        locationSearchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(50)
        }
        
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(locationSearchBar.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(10)
            make.height.equalTo(50)
            
            // 다 잡아주지 않으면 나오질 않는다.

        }
        
    }
}

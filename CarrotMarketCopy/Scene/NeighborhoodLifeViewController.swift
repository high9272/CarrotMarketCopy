//
//  NeighborhoodLifeViewController.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/03.
//

import Foundation
import UIKit
class NeighborhoodLifeViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupNavigationBar()
        //setupTableView()
    }
    
    
    
}

extension NeighborhoodLifeViewController {
    
    func setupNavigationBar(){
        
        
        let locationButton = UIButton(type: .custom)
        locationButton.setTitle("구산동", for: .normal)
        locationButton.setTitleColor(.label, for: .normal)
        locationButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        let titleBarButton = UIBarButtonItem(customView: locationButton)
        
        
        let locationIcon = UIButton(type: .custom)
        locationIcon.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        let locationBarIcon = UIBarButtonItem(customView: locationIcon)
        
        let locationItems = [titleBarButton,locationBarIcon]
        navigationItem.leftBarButtonItems = locationItems
        
        
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

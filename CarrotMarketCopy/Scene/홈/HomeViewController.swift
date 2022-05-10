//
//  MainViewController.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/03.
//

import Foundation
import UIKit
import SnapKit
import Floaty

class HomeViewController:UIViewController{
    
    let floaty = Floaty()
    
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine //구분선
        tableView.register(HomeViewCell.self, forCellReuseIdentifier: "HomeViewCell")
        tableView.rowHeight = 140 //셀 높이
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        floatySet()
        setupNavigationBar()
        setupTableView()
    }
    
}
extension HomeViewController {
    
    func floatySet(){
        floaty.buttonColor = .orange
        floaty.plusColor = .white
        

    }
}
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeViewCell", for: indexPath) as? HomeViewCell
        cell?.selectionStyle = .none
        cell?.backgroundColor = .systemBackground
        cell?.setup()
        return cell ?? UITableViewCell()
        
        
        
    }
    

    
}




extension HomeViewController{
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

private extension HomeViewController{
    func setupTableView(){
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        tableView.addSubview(floaty)
        floaty.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-15)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-15)
        }
        
        
        
        
        
        
        
    }
}

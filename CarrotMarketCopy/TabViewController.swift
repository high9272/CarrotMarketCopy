//
//  ViewController.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/03.
//

import UIKit
import SnapKit
import Floaty

class TabViewController: UITabBarController { //(1): UITabBarController 상속받고

    override func viewDidLoad() {
        super.viewDidLoad()
   
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
   
        let neighborhoodLifeViewController = UINavigationController(rootViewController:NeighborhoodLifeViewController())
        neighborhoodLifeViewController.tabBarItem = UITabBarItem(title: "동네생활", image: UIImage(systemName: "newspaper"), selectedImage: UIImage(systemName: "newspaper.fill"))
        let myLocationViewController = UINavigationController(rootViewController: MyLocationViewController())
        myLocationViewController.tabBarItem = UITabBarItem(title: "내 근처", image: UIImage(systemName: "location"), selectedImage: UIImage(systemName: "location.fill"))
        
        let chattViewController = UINavigationController(rootViewController: ChattViewController())
        chattViewController.tabBarItem = UITabBarItem(title: "채팅", image: UIImage(systemName: "message"), selectedImage: UIImage(systemName: "message.fill"))
        
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.tabBarItem = UITabBarItem(title: "나의 당근", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        
        
        viewControllers = [homeViewController,neighborhoodLifeViewController,myLocationViewController,chattViewController,profileViewController] // (2): 뷰컨트롤러에 추가
        
        
        
        
    }


}


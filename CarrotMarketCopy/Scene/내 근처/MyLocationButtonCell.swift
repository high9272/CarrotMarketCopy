//
//  MyLocationButtonCell.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/09.
//

import Foundation
import UIKit
import SnapKit


final class MyLocationButtonCell: UICollectionViewCell{
    
    
    let rewardButton = UIButton()
    
    
    func setup() {
        
        addSubview(rewardButton)
        rewardButton.frame.size = rewardButton.intrinsicContentSize // 본질적인 크기
        //addSubview(rewardButton)
        rewardButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
            //$0.width.equalTo(100)
            //$0.height.equalTo(20)
        }
        rewardButton.backgroundColor = .systemBackground
        rewardButton.layer.borderWidth = 0.5
        rewardButton.layer.borderColor = UIColor.label.cgColor
        rewardButton.layer.cornerRadius = 10
        //rewardButton.text = "dsss"
        rewardButton.titleLabel?.font = .systemFont(ofSize: 12, weight: .medium)
        //rewardButton.setTitle("리워드 쿠폰", for: .normal)
        rewardButton.setTitleColor(.label, for: .normal)
        
        
        
    }
}

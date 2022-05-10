//
//  HomeViewCell.swift
//  CarrotMarketCopy
//
//  Created by DaWoon Jeong on 2022/05/09.
//

import Foundation
import UIKit
import SnapKit

class HomeViewCell:UITableViewCell {
    private lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        imageView.layer.cornerRadius = 10

        return imageView
        
    }()
    
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "맥북에어 팝니다"
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .regular)
        
        return label
    }()
    
    private lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.text = "은평구 구산동"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 12, weight: .regular)
        
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "70,000원"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 16, weight: .bold)
        
        return label
    }()
    
    
    func setup(){
        [postImageView, titleLabel,locationLabel, priceLabel].forEach{addSubview($0) }
        
        postImageView.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide).offset(10)
            make.top.equalTo(safeAreaLayoutGuide).offset(10)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-10)
            
            make.width.equalTo(120)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(postImageView.snp.trailing).offset(10)
            make.top.equalTo(safeAreaLayoutGuide).offset(10)
        }
        
        locationLabel.snp.makeConstraints { make in
            make.leading.equalTo(postImageView.snp.trailing).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            
        }
        
        priceLabel.snp.makeConstraints { make in
            make.leading.equalTo(postImageView.snp.trailing).offset(10)
            make.top.equalTo(locationLabel.snp.bottom).offset(8)
            
        }
    }
    
    
    

    
}

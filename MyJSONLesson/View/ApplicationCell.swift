//
//  ApplicationCell.swift
//  MyJSONLesson
//
//  Created by MICHAEL ADU DARKO on 10/9/22.
//

import Foundation
import UIKit

class ApplicationCell: UICollectionViewCell {
    
    //MARK: - Properties
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
//        iv.image = UIImage(named: "Aubrey")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let imageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCell()
       
    }
    
    
    func setUpCell(){
        backgroundColor = #colorLiteral(red: 0.06877002084, green: 0.08996887456, blue: 0.1052305398, alpha: 0.9835471854)
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 10
        layer.shadowOffset = .zero
        layer.shadowRadius = 6
        clipsToBounds = false
        layer.masksToBounds = false
        backgroundColor = .systemPink
        
        
        
        contentView.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        contentView.addSubview(imageLabel)
        imageLabel.topAnchor.constraint(equalTo: bottomAnchor, constant: -30).isActive = true
        imageLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        
        
        
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

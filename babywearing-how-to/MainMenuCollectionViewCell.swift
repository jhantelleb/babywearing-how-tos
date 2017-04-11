//
//  MainMenuViewCell.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/9/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewCell: UICollectionViewCell {
    
    var menuLabel: UILabel? = UILabel(frame: CGRect(x: 20, y: 3, width: 100, height: 5))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = UIColor.blue
        menuLabel?.text = "Sample text"
        menuLabel?.textColor = UIColor.white
        self.addSubview(menuLabel!)
        
    }
}

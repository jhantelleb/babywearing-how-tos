//
//  MainMenu.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/7/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import Foundation
import UIKit

struct MenuItem {
    var bgColor = UIColor(red:0.05, green:0.10, blue:0.35, alpha:1.0)
    var description: String = ""
    
    init(description: String) {
        self.description = description
    }
}


struct Menu {
    var menuItems: [MenuItem] = []
    
    mutating func generateMenuItems(menuItem: MenuItem) {
        self.menuItems.append(menuItem)
    }
    
    
    //Test
    mutating func generateMenuData() {
        generateMenuItems(menuItem: MenuItem(description: "What is Babywearing?"))
        generateMenuItems(menuItem: MenuItem(description: "Benefits of Babywearing"))
        generateMenuItems(menuItem: MenuItem(description: "Recommended Carrier for your Little One"))
    }
    
    
    
}

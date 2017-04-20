//
//  MainMenuViewModel.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/8/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import Foundation

struct MainMenuViewModel {
    
    var menuItems = [MenuItem]()
    var menu: Menu
    
    init() {
        self.menuItems = []
        self.menu = Menu(menuItems: [])
    }
    
    mutating func createMenuItems() {
        menuItems.append(MenuItem(menuType: .whatIsBW))
        menuItems.append(MenuItem(menuType: .benefitsOfBW))
        menuItems.append(MenuItem(menuType: .recommendedCarrier))
        menuItems.append(MenuItem(menuType: .usingACarrier))
        
        self.menu = Menu(menuItems: menuItems)
    }
    
}

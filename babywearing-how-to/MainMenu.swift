//
//  MainMenu.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/7/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import Foundation

struct MainMenu {
    var name = "Main Menu"
    var menuItem = [MenuItem]()
    
    init() {
        let menuItem = MenuItem(type: .What)
        self.menuItem.append(menuItem)
    }
}


enum MenuItemType {
    case What
    case Benefits
    case Science
    case OptimalPosition
    case SafetyReminders
    case TypesOfCarrier
    case Faq
    case Infographics
}


struct MenuItem {
    var contents = [Content]()
    var type: MenuItemType
    
    init(type: MenuItemType) {
        self.type = type
    }
}

struct Content {
    var bgImageLink: String
    var description: String
}

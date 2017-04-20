//
//  MainMenu.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/7/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import Foundation
import UIKit

enum MenuType {
    case whatIsBW
    case benefitsOfBW
    case recommendedCarrier
    case usingACarrier
}

struct MenuItem {

    var menuType: MenuType
    
    init(menuType: MenuType) {
        self.menuType = menuType
    }
    
    var description: String {
        switch self.menuType {
        case .whatIsBW:
            return Constants.whatIsBWDesc
        case .benefitsOfBW:
            return Constants.benefitsOfBWDesc
        case .recommendedCarrier:
            return Constants.recommendedDesc
        case .usingACarrier:
            return Constants.usingACarrierDesc
        }
    }
    
    var segue: String {
        switch self.menuType {
        case .whatIsBW:
            return Constants.whatIsBWSegue
        case .benefitsOfBW:
            return Constants.benefitsOfBWSegue
        case .recommendedCarrier:
            return Constants.recommendedCarrierSegue
        case .usingACarrier:
            return Constants.usingACarrierSegue
        }
    }
}


struct Menu {
    
    var bgColor = Constants.menuBGColor
    var menuItems: [MenuItem] = []
    
    init(menuItems: [MenuItem]) {
        self.menuItems = menuItems
    }
    
}






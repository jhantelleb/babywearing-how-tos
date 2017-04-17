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
    
    static var description =
        [ whatIsBW: Constants.whatIsBWDesc,
          benefitsOfBW: Constants.benefitsOfBWDesc,
          recommendedCarrier: Constants.recommendedDesc,
          usingACarrier: Constants.usingACarrierDesc ]
    
    static let segue =
        [ whatIsBW: Constants.whatIsBWSegue,
          benefitsOfBW: Constants.benefitsOfBWSegue,
          recommendedCarrier: Constants.recommendedCarrierSegue,
          usingACarrier: Constants.usingACarrierSegue ]
    
}

struct MenuItem {
    var bgColor = UIColor(red:0.05, green:0.10, blue:0.35, alpha:1.0)
    var description: String = ""
    
    init(description: String) {
        self.description = description
    }
}


struct Menu {
    var menuItems: [MenuItem] = []
    var menuType: MenuType
    
    init(menuType: MenuType) {
        self.menuType = menuType
    }
}






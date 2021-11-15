//
//  NavigationController.swift
//  WBooks
//
//  Created by erik.e.anrique on 15/11/2021.
//

import Foundation
import UIKit

class NavigationController : UINavigationController {
    static var navAppearance = UINavigationBarAppearance()
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        let barColor = UIColor(rgb: 0x00ADEE)
        NavigationController.navAppearance.configureWithOpaqueBackground()
        NavigationController.navAppearance.backgroundColor = barColor
        NavigationController.navAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  BaseViewController.swift
//  PrinterestTabBar
//
//  Created by Christophe Hoste on 01.05.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    func toogleTabbar(hide: Bool) {
        guard let tabBar = tabBarController as? Tabbarcontoller else { return }
        tabBar.toggle(hide: hide)
    }
}

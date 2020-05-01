//
//  PushViewController.swift
//  PrinterestTabBar
//
//  Created by Christophe Hoste on 01.05.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class PushViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Pushed VC"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        toogleTabbar(hide: true)
    }
}

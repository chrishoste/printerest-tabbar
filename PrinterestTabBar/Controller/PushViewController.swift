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

        toogleTabbar(hide: true)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)

        toogleTabbar(hide: false)
    }
}

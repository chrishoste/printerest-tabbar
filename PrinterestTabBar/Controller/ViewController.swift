//
//  ViewController.swift
//  PrinterestTabBar
//
//  Created by Christophe Hoste on 29.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Push new VC", for: .normal)
        button.addTarget(self, action: #selector(handeAction(_:)), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 5
        button.titleEdgeInsets = .init(top: 8, left: 8, bottom: 8, right: 8)
        button.constrainWidth(constant: 150)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(button)
        button.centerInSuperview()
    }

    @objc
    func handeAction(_ sender: UIButton) {
        let newVC = PushViewController()
        navigationController?.navigationBar.tintColor = .black
        navigationController?.pushViewController(newVC, animated: true)
    }
}

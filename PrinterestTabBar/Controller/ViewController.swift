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
    }

    init(showPushButton: Bool = false) {
        super.init(nibName: nil, bundle: nil)

        if showPushButton {
            setupButton()
        }
    }

    func setupButton() {

        view.addSubview(button)
        button.centerInSuperview()
    }

    @objc
    func handeAction(_ sender: UIButton) {
        let newVC = PushViewController()
        navigationController?.navigationBar.tintColor = .black
        navigationController?.pushViewController(newVC, animated: true)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

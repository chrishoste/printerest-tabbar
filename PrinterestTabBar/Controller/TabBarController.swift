//
//  TabBarController.swift
//  PrinterestTabBar
//
//  Created by Christophe Hoste on 29.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//
// swiftlint:disable all
import UIKit

class Tabbarcontoller: UITabBarController {

    let floatingTabbarView = FloatingBarView(["house", "bubble.middle.bottom", "bolt.circle", "rectangle.3.offgrid"])

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            createNavViewController(viewController: ViewController(), title: "Home", imageName: "house.fill"),
            createNavViewController(viewController: ViewController(), title: "About", imageName: "bubble.middle.bottom.fill"),
            createNavViewController(viewController: ViewController(), title: "Trending", imageName: "flame.fill"),
            createNavViewController(viewController: ViewController(), title: "Settings", imageName: "rectangle.3.offgrid.fill")
        ]
        tabBar.isHidden = true

        setupFloatingTabBar()
    }

    private func createNavViewController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {

        viewController.navigationItem.title = title

        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)

        return navController
    }

    func setupFloatingTabBar() {
        floatingTabbarView.delegate = self
        view.addSubview(floatingTabbarView)
        floatingTabbarView.centerXInSuperview()
        floatingTabbarView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
    }
    
    func toggle(hide: Bool) {
        floatingTabbarView.toggle(hide: hide)
    }
}

extension Tabbarcontoller: FloatingBarViewDelegate {
    func did(selectindex: Int) {
        selectedIndex = selectindex
    }
}

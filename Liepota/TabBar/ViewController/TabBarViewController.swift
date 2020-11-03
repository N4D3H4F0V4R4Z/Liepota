//
//  TabBarViewController.swift
//  Liepota
//
//  Created by Наджафов Араз on 03.11.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - Configure

private extension TabBarViewController {

    func configure() {
        configureViewController()
        configureTabBar()
    }

    func configureViewController(){
        
        
        let priceVC = UIStoryboard(name: "Price", bundle: nil).instantiateInitialViewController() as! UINavigationController
        let priceTabBarItem = UITabBarItem()
        priceTabBarItem.title = "Обо мне"
        priceTabBarItem.image = UIImage(named: "about")
        priceTabBarItem.selectedImage = UIImage(named: "aboutSelected")
        priceVC.tabBarItem = priceTabBarItem
        
        let videoVC = UIStoryboard(name: "Video", bundle: nil).instantiateInitialViewController() as! UINavigationController
        let videoTabBarItem = UITabBarItem()
        videoTabBarItem.title = "Видео"
        videoTabBarItem.image = UIImage(named: "video")
        videoTabBarItem.selectedImage = UIImage(named: "videoSelected")
        videoVC.tabBarItem = videoTabBarItem
        
//        let editorVC = UIStoryboard(name: "Editor", bundle: nil).instantiateInitialViewController() as! UINavigationController
//        let editorTabBarItem = UITabBarItem()
//        editorTabBarItem.title = "Editor"
//        editorTabBarItem.image = UIImage(named: "editor")
//        editorTabBarItem.selectedImage = UIImage(named: "editorSelected")
//        editorVC.tabBarItem = editorTabBarItem

        viewControllers = [priceVC, videoVC]
    }

    func configureTabBar(){
        tabBar.tintColor = .black
        tabBar.barTintColor = .gray
    }

}


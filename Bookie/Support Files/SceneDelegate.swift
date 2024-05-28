//
//  SceneDelegate.swift
//  Bookie
//
//  Created by Phi Nguyen on 13/05/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Create and configure the Tab Bar Controller
        let tabBarController = createTabBarController()
        
        // Set the Tab Bar Controller as the Root View Controller
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    // MARK: - Helper Methods
    
    private func createTabBarController() -> UITabBarController {
        // Initialize the Tab Bar Controller
        let tabBarController = UITabBarController()
        
        // Create View Controllers
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home-icon"), tag: 0)
        
        let settingsVC = AccountViewController()
        settingsVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "user-icon"), tag: 1)
        
        // Add View Controllers to the Tab Bar Controller
        tabBarController.viewControllers = [homeVC, settingsVC]
        
        // Configure Tab Bar Appearance
        configureTabBarAppearance(tabBarController)
        
        return tabBarController
    }
    
    private func configureTabBarAppearance(_ tabBarController: UITabBarController) {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .white
        
        tabBarController.tabBar.standardAppearance = tabBarAppearance
        if #available(iOS 15.0, *) {
            tabBarController.tabBar.scrollEdgeAppearance = tabBarAppearance
        }
        
        // Set colors for tab bar items
        tabBarController.tabBar.tintColor = BookieColors.primary // Color for selected items
        tabBarController.tabBar.unselectedItemTintColor = .gray // Color for unselected items
        
        // This line ensures any subviews extending beyond the tab bar's bounds are not rendered
        tabBarController.tabBar.clipsToBounds = true
    }
    
    // MARK: - UISceneDelegate Lifecycle Methods
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Handle scene disconnection
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Handle scene becoming active
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Handle scene resigning active state
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Handle scene entering foreground
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Handle scene entering background
    }
}

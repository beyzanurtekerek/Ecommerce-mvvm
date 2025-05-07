//
//  TabBarController.swift
//  Ecommerce-mvvm
//
//  Created by Beyza Nur Tekerek on 7.05.2025.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        configureTabBar()
    }
    
    private func setupTabs() {
        let home = UINavigationController(rootViewController: HomeViewController())
        let cart = UINavigationController(rootViewController: CartViewController())
        let favorites = UINavigationController(rootViewController: FavoriteViewController())
        let profile = UINavigationController(rootViewController: ProfileViewController())
        
        home.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        cart.tabBarItem = UITabBarItem(
            title: "Cart",
            image: UIImage(systemName: "cart"),
            selectedImage: UIImage(systemName: "cart.fill")
        )
        
        favorites.tabBarItem = UITabBarItem(
            title: "Favorites",
            image: UIImage(systemName: "star"),
            selectedImage: UIImage(systemName: "star.fill")
        )
        
        profile.tabBarItem = UITabBarItem(
            title: "Proile",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
        setViewControllers([home, cart, favorites, profile], animated: true)
        selectedIndex = 0
    }
    
    
    private func configureTabBar() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        tabBar.tintColor = .systemOrange
    }
}

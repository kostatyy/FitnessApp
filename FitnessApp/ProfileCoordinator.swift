//
//  ProfileCoordinator.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

final class ProfileCoordinator: Coordinator {
    
    var rootViewController: UIViewController {
        return profileViewController
    }
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var profileViewController: ProfileViewController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.profileViewController = .instantiate()
    }
    
    func start() {
        profileViewController.setTabBarItem(image: "paperplane", selectedColor: .white, unSelectedColor: .gray, title: "Profile", tabBarItemTitle: "Profile")
        let viewModel = ProfileViewModel()
        viewModel.coordinator = self
        profileViewController.viewModel = viewModel
        navigationController.pushViewController(profileViewController, animated: false)
    }
    
}

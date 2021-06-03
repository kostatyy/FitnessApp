//
//  SettingsCoordinator.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

final class SettingsCoordinator: Coordinator {
    
    var rootViewController: UIViewController {
        return settingsViewController
    }
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var settingsViewController: SettingsViewController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.settingsViewController = .instantiate()
    }
    
    func start() {
        settingsViewController.setTabBarItem(image: "paperplane", selectedColor: .white, unSelectedColor: .gray, title: "Settings", tabBarItemTitle: "Profile")
        let viewModel = SettingsViewModel()
        viewModel.coordinator = self
        settingsViewController.viewModel = viewModel
        navigationController.pushViewController(settingsViewController, animated: false)
    }
    
}

//
//  ActivityCoordinator.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

final class ActivityCoordinator: Coordinator {
    
    var rootViewController: UIViewController {
        return activityViewController
    }
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var activityViewController: ActivityViewController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.activityViewController = .instantiate()
    }
    
    func start() {
        activityViewController.setTabBarItem(image: "paperplane", selectedColor: .white, unSelectedColor: .gray, title: "Activity", tabBarItemTitle: "Profile")
        let viewModel = ActivityViewModel()
        viewModel.coordinator = self
        activityViewController.viewModel = viewModel
        navigationController.pushViewController(activityViewController, animated: false)
    }
    
}

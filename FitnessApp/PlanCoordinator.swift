//
//  PlanCoordinator.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

final class PlanCoordinator: Coordinator {
    
    var rootViewController: UIViewController {
        return planViewController
    }
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var planViewController: PlanViewController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.planViewController = .instantiate()
    }
    
    func start() {
        planViewController.setTabBarItem(image: "paperplane", selectedColor: .white, unSelectedColor: .gray, title: "Plan", tabBarItemTitle: "Profile")
        let viewModel = PlanViewModel()
        viewModel.coordinator = self
        planViewController.viewModel = viewModel
        navigationController.pushViewController(planViewController, animated: false)
    }
    
}

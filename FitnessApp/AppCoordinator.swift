//
//  AppCoordinator.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

/* Coordinator Protocol */
protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    var navigationController: UINavigationController { get }
    func start()
}

//final class MainCoordinator: NSObject, Coordinator, UITabBarControllerDelegate {
//    
//    var childCoordinators: [Coordinator] = []
//    var navigationController: UINavigationController
//    
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//    
//    func start() {
//        let viewController: MainTabBarController = .instantiate()
//        viewController.modalPresentationStyle = .fullScreen
//        navigationController.present(viewController, animated: true, completion: nil)
//    }
//    
//}

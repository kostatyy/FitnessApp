//
//  MainTabBarController.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let activityCoordinator = ActivityCoordinator(navigationController: UINavigationController())
    let planCoordinator     = PlanCoordinator(navigationController: UINavigationController())
    let profileCoordinator  = ProfileCoordinator(navigationController: UINavigationController())
    let settingsCoordinator = SettingsCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        activityCoordinator.start()
        planCoordinator.start()
        profileCoordinator.start()
        settingsCoordinator.start()
        
        viewControllers =
            [
                activityCoordinator.navigationController,
                planCoordinator.navigationController,
                UIViewController(),
                profileCoordinator.navigationController,
                settingsCoordinator.navigationController
            ]
    }
}

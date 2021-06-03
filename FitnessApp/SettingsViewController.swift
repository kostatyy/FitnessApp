//
//  SettingsViewController.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    weak var viewModel: SettingsViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        customizeViewController()
        addProfileImageToNavigationBar(image: UIImage(named: "profile")!)
    }
}

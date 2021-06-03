//
//  ProfileViewController.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    weak var viewModel: ProfileViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        customizeViewController()
        addProfileImageToNavigationBar(image: UIImage(named: "profile")!)
    }

}

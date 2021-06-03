//
//  PlanViewController.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

class PlanViewController: UIViewController {

    weak var viewModel: PlanViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customizeViewController()
        addProfileImageToNavigationBar(image: UIImage(named: "profile")!)
    }
    
}

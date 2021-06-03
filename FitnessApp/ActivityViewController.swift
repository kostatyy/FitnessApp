//
//  ActivityViewController.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

class ActivityViewController: UIViewController {
    
    weak var viewModel: ActivityViewModel?
    private var someView: UIView!
    private var customActivitySectionView: ActivitySectionView!
    private var firstActivityDescriptors: [ActivityDescriptorView]!
    private var secondActivityDescriptors: [ActivityDescriptorView]!

    override func viewDidLoad() {
        super.viewDidLoad()

        customizeViewController()
        addProfileImageToNavigationBar(image: UIImage(named: "profile")!)
        
        setupViews()
    }
    
    private func setupViews() {
        someView = UIView()
        
        setupActivitySections()
        customActivitySectionView = ActivitySectionView(frame: .zero, firstSectionViews: firstActivityDescriptors, secondSectionViews: secondActivityDescriptors)
        
        someView.backgroundColor = .viewColor
        someView.layer.cornerRadius = 20
        someView.translatesAutoresizingMaskIntoConstraints = false
        customActivitySectionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(someView)
        someView.addSubview(customActivitySectionView)
        
        NSLayoutConstraint.activate([
            someView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            someView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            someView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),

            customActivitySectionView.centerXAnchor.constraint(equalTo: someView.centerXAnchor),
            customActivitySectionView.centerYAnchor.constraint(equalTo: someView.centerYAnchor),
            customActivitySectionView.widthAnchor.constraint(equalTo: someView.widthAnchor, multiplier: 0.95),
            customActivitySectionView.heightAnchor.constraint(equalTo: someView.heightAnchor, multiplier: 0.9)
        ])
    }
    
    private func setupActivitySections() {
        let dist = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "map")!, activityDescrValueString: 8.32, activityDescrString: "Distance")
        
        let time = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "timer")!, activityDescrValueString: 1.30, activityDescrString: "Hours")
        
        let speed = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "speedometer")!, activityDescrValueString: 5.25, activityDescrString: "Speed")
        
        let cal = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "power")!, activityDescrValueString: 160, activityDescrString: "Calories")
        
        let shape = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "person")!, activityDescrValueString: 1, activityDescrString: "Person")
        
        let pulse = ActivityDescriptorView(frame: .zero, activityImage: UIImage(systemName: "heart")!, activityDescrValueString: 120, activityDescrString: "Pulse")
        
        firstActivityDescriptors = [dist, time, speed]
        secondActivityDescriptors = [cal, shape, pulse]
    }

}

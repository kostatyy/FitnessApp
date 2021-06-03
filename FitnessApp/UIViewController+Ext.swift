//
//  UIViewController+Ext.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

extension UIViewController {
    
    // Initializing View Controller From Storyboard
    static func instantiate<T>(id: String? = nil, storyboardName: String = "Main") -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: .main)
        var viewController: T
        if let id = id {
            viewController = storyboard.instantiateViewController(withIdentifier: "\(id.self)") as! T
        } else {
            viewController = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        }
        return viewController
    }
    
    func addGradientBg(colorTop: UIColor, colorBottom: UIColor, alpha: CGFloat) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        gradientLayer.startPoint = CGPoint(x: -0.2, y: 1.2)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.masksToBounds = true
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // Setting Up Tab Bar Item
    func setTabBarItem(image: String, selectedColor: UIColor, unSelectedColor: UIColor, tag: Int? = nil, title: String? = nil, tabBarItemTitle: String? = nil) {
        
        self.title = title
        
        tabBarItem = UITabBarItem(
            title: tabBarItemTitle,
            image: UIImage(systemName: image)?
                .withTintColor(selectedColor, renderingMode: .alwaysTemplate).withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(systemName: image)?
                .withTintColor(selectedColor, renderingMode: .alwaysTemplate).withRenderingMode(.alwaysOriginal)
        )
        if let tag = tag {
            tabBarItem.tag = tag
        }
    }
    
    // Customizing View Controller (NavBar, TabBar, BG)
    func customizeViewController() {
        customizeNavBarController(textColor: .white)
        customizeTabBarController()
    }
    
    // Customizing Navigation Bar
    func customizeNavBarController(textColor: UIColor) {
        let backArrowImage = UIImage(named: "backArrow")
        view.backgroundColor = .bgColor
//        addGradientBg(colorTop: .bgColor, colorBottom: .bgColor2, alpha: 1.0)
        navigationController?.navigationBar.backIndicatorImage = backArrowImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backArrowImage
        navigationController?.navigationBar.backItem?.title = ""
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:.plain, target: nil, action: nil)
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.view.backgroundColor = .clear
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: textColor,
            .font: UIFont.setFont(size: .ExtraLarge, weight: .Bold),
            .kern: 1.74
        ]
    }
    
    // Customizing Tab Bar
    func customizeTabBarController() {
        tabBarController?.tabBar.backgroundImage = UIImage()
        tabBarController?.tabBar.shadowImage = UIImage()
    }
    
    func addProfileImageToNavigationBar(image: UIImage) {
        
        let imageView = UIImageView(image: image)
        let imageMultipler: CGFloat = 0.6
        
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        navigationBar.addSubview(imageView)
        imageView.layer.cornerRadius = navigationBar.frame.height * imageMultipler * 0.5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: navigationBar.centerYAnchor),
            imageView.heightAnchor.constraint(equalTo: navigationBar.heightAnchor, multiplier: imageMultipler),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            imageView.rightAnchor.constraint(equalTo: navigationBar.rightAnchor,
                                             constant: -20)
        ])
    }
}

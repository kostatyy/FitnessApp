//
//  ActivitySectionView.swift
//  FitnessApp
//
//  Created by Macbook Pro on 29.05.2021.
//

import UIKit

class ActivitySectionView: UIView {
    
    private var invisibleView: UIView! // Invisible Scrollable View
    private var firstView: UIStackView! // First Section
    private var secondView: UIStackView! // Second Section
    private var activeView: Int = 1 // Active(visible) section
    
    private var firstSectionViews: [ActivityDescriptorView]
    private var secondSectionViews: [ActivityDescriptorView]
    
    init(frame: CGRect, firstSectionViews: [ActivityDescriptorView], secondSectionViews: [ActivityDescriptorView]) {
        self.firstSectionViews = firstSectionViews
        self.secondSectionViews = secondSectionViews
        
        super.init(frame: frame)
        
        commonInit()
    }
    
    private func commonInit() {

        invisibleView = UIView(frame: .zero)
        firstView = UIStackView(arrangedSubviews: firstSectionViews)
        secondView = UIStackView(arrangedSubviews: secondSectionViews)
        
        [firstView, secondView].forEach {
            $0?.axis = .horizontal
            $0?.distribution = .fillEqually
            $0?.alignment = .fill
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
        
//        firstView.backgroundColor = .yellow
//        secondView.backgroundColor = .red
        secondView.alpha = 0
        
        invisibleView.backgroundColor = .clear
        invisibleView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(secondView)
        addSubview(firstView)
        addSubview(invisibleView)
        
        [firstView, secondView, invisibleView].forEach {
            $0?.pinToEdges()
        }
        
        let tapGesture = UIPanGestureRecognizer(target: self, action: #selector(didSwipe(_:)))
        invisibleView.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ActivitySectionView {
    /* Swiping Invisible View To Change Section With Dissolve Animation */
    @objc private func didSwipe(_ sender: UIPanGestureRecognizer) {
        let activityView = sender.view!
        let point = sender.translation(in: self)
        let xFromCenter = activityView.center.x - center.x
        
        if activeView == 1, xFromCenter > 0 {
            activityView.center = CGPoint(x: center.x, y: activityView.center.y)
            return
        }
        if activeView == 2, xFromCenter < 0 {
            activityView.center = CGPoint(x: center.x, y: activityView.center.y)
            return
        }
        
        activityView.center = CGPoint(x: center.x + point.x, y: activityView.center.y)
                
        if activeView == 1 {
            secondView.alpha = abs(xFromCenter) / center.x
            firstView.alpha = 1 - secondView.alpha
        } else {
            firstView.alpha = abs(xFromCenter) / center.x
            secondView.alpha = 1 - firstView.alpha        }

        if sender.state == .ended {
            UIView.animate(withDuration: 0.2) {
                if self.activeView == 1 {
                    if abs(xFromCenter) > activityView.center.x {
                        self.activeView = 2
                        self.secondView.alpha = 1
                        self.firstView.alpha = 0
                    } else {
                        self.secondView.alpha = 0
                        self.firstView.alpha = 1
                    }
                } else {
                    if xFromCenter >= (self.center.x / 2) {
                        self.activeView = 1
                        self.secondView.alpha = 0
                        self.firstView.alpha = 1
                    } else {
                        self.secondView.alpha = 1
                        self.firstView.alpha = 0
                    }
                }
                
                activityView.center = self.center
            }
        }
    }
    
}

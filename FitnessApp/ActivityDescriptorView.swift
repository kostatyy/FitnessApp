//
//  ActivityDescriptorView.swift
//  FitnessApp
//
//  Created by Macbook Pro on 30.05.2021.
//

import UIKit

class ActivityDescriptorView: UIView {
    
    @IBOutlet private weak var activityImageView: UIImageView!
    @IBOutlet private weak var activityDescrValue: UILabel!
    @IBOutlet private weak var activityDescr: UILabel!

    init(frame: CGRect, activityImage: UIImage, activityDescrValueString: CGFloat, activityDescrString: String) {
        super.init(frame: frame)

        configureViews(activityImage: activityImage, activityDescrValueString: activityDescrValueString, activityDescrString: activityDescrString)
    }
    
    private func configureViews(activityImage: UIImage, activityDescrValueString: CGFloat, activityDescrString: String) {
        guard let view = self.loadFromNib(nibName: "ActivityDescriptor") else {
            return
        }

        view.frame = self.bounds
        view.backgroundColor = .clear
        self.addSubview(view)
        
        activityImageView.image = activityImage
        activityDescrValue.text = "\(activityDescrValueString)"
        activityDescr.text = activityDescrString
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

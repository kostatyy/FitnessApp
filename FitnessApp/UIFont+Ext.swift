//
//  UIFont+Ext.swift
//  FitnessApp
//
//  Created by Macbook Pro on 28.05.2021.
//

import UIKit

enum FontSize {
    case Small
    case Medium
    case Big
    case Large
    case Largest
    case ExtraLarge
}

enum FontWeight: String {
    case Regular
    case Light
    case Bold
}

extension UIFont {
    
    static func setFont(size: FontSize, weight: FontWeight = .Regular) -> UIFont {
        let deviceType = UIDevice.current.deviceType

        switch deviceType {
         
        case .iPhone4_4S:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 6)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 8)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 12)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 14)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 26)!) }
        case .iPhones_5_5s_5c_SE:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 9)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 11)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 15)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 17)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 21)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 29)!) }
        case .iPhones_SE2_6_6s_7_8:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 10)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 12)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 16)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 22)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 30)!) }
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 12)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 14)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 20)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 24)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 32)!) }
        case .iPhoneX:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 12)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 14)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 20)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 24)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 32)!) }
        default:
            if size == .Small { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 12)!) }
            if size == .Medium { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 14)!) }
            if size == .Big { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!) }
            if size == .Large { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 20)!) }
            if size == .Largest { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 24)!) }
            if size == .ExtraLarge { return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 32)!) }
        }
        return UIFontMetrics.default.scaledFont(for: UIFont(name: "Lato-\(weight.rawValue)", size: 18)!)
    }
    
}

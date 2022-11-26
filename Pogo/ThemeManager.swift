//
//  ThemeManager.swift
//  Shimmer
//
//  Created by Amy While on 20/07/2022.
//

import UIKit

final class ThemeManager {
        
    static var secondaryBackgroundColour: UIColor {
        UIColor(dynamicProvider: { traitCollection in
            if traitCollection.userInterfaceStyle == .dark {
                return .black
            } else {
                return .white
            }
        })
    }
    
    static var backgroundColour: UIColor {
        UIColor(dynamicProvider: { traitCollection in
            if traitCollection.userInterfaceStyle == .dark {
                return .black
            } else {
                return .white
            }
        })
    }
    
}

extension UIColor {

    static var backgroundColor: UIColor {
        ThemeManager.backgroundColour
    }
    
    static var secondaryBackgroundColor: UIColor {
        ThemeManager.secondaryBackgroundColour
    }
    
}

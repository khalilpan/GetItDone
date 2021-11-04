//
//  UiColorExtention.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

//Adding more functionalities to UIColor
extension UIColor {
    
    convenience init(red: Int, green:Int, blue: Int){
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
    
}

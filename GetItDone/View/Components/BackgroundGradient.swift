//
//  Gradient.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

//    A layer that draws a color gradient over its background color, filling the shape of the layer (including rounded corners)
class BackgroundGradient: UIView {

    var backgroundColors: [CGColor] = [

        //with extention
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor

        //without extention
//        UIColor.init(red: CGFloat(100)/255.0, green: CGFloat(228)/255.0, blue: CGFloat(255)/255.0, alpha: 1.0).cgColor,
//        UIColor.init(red: CGFloat(58)/255.0, green: CGFloat(123)/255.0, blue: CGFloat(213)/255.0, alpha: 1.0).cgColor
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.backgroundColors
            layer.locations = [0.0, 1.2]
        }
        
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

//
//  Gradient.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

class BackgroundGradient: UIView {
//    A layer that draws a color gradient over its background color, filling the shape of the layer (including rounded corners)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [UIColor.blue.cgColor, UIColor.gray.cgColor]
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

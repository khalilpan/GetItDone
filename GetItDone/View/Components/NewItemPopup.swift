//
//  NewItemPopup.swift
//  GetItDone
//
//  Created by khalil.panahi on 06/11/21.
//

import UIKit

class NewItemPopup: BackgroundGradient {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 20
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
//  ViewController.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

class WelcomeController: UIViewController {

    lazy var backGround: UIView = {
        let view = BackgroundGradient()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupView()
    }
}

extension WelcomeController: CodeView {
    func buildView() {
        view.addSubview(backGround)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backGround.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(backGround.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(backGround.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(backGround.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}


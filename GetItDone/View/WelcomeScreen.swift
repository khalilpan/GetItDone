//
//  WelcomeScreen.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class WelcomeScreen: UIView {
    
    var buttonPressAction: (() -> Void)?

    lazy var backGround: UIView = {
        let view = BackgroundGradient()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 24
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var titleLabel: UILabel = {
        let view = CustomLabel(title: "GET IT DONE.", size: 24, textAlignment: .center)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var descriptionLabel: UILabel = {
        let view = CustomLabel(title: "Welcome, \nGET IT DONE is a TO DO list app.", size: 20, textAlignment: .center)
        view.numberOfLines = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var copyrightLabel: UILabel = {
        let view = CustomLabel(title: "© Copyright | KhalilPan", color: .black, size: 10, textAlignment: .center)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var nextButton: UIButton = {
        let view = CustomButton(title: "START WINNING", type: .roundedText, cornerRadius: 25)
        view.addTarget(self, action: #selector(self.buttonHandler), for: .touchUpInside)
        return view
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        backgroundColor = .white

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func buttonHandler() {
        // to add animation when button pressed
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn) {
            // will run when action starts(will decrease button size)
            self.nextButton.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        } completion: { _ in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn) {
                // will run when action got complete(will change button size back)
                self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            }

            self.buttonPressAction?()
        }
    }
}

//MARK: - CodeView

extension WelcomeScreen: CodeView {
    func buildView() {
        addSubview(backGround)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(copyrightLabel)
        addSubview(nextButton)
    }

    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()

        constraints.append(backGround.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(backGround.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(backGround.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(backGround.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20))

        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: backGround.topAnchor, constant: 20))

        constraints.append(descriptionLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(descriptionLabel.centerYAnchor.constraint(equalTo: backGround.centerYAnchor))

        constraints.append(copyrightLabel.topAnchor.constraint(equalTo: backGround.bottomAnchor, constant: 5))
        constraints.append(copyrightLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))

        constraints.append(nextButton.bottomAnchor.constraint(equalTo: backGround.bottomAnchor, constant: -20))
        constraints.append(nextButton.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(nextButton.widthAnchor.constraint(equalTo: backGround.widthAnchor, multiplier: 0.6))
        constraints.append(nextButton.heightAnchor.constraint(equalToConstant: 50))

        NSLayoutConstraint.activate(constraints)
    }

    func setupAddicionalConfiguration() {
    }
}

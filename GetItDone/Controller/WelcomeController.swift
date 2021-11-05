//
//  ViewController.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

class WelcomeController: UIViewController {
    
let welcomeScreen = WelcomeScreen()
    
    override func loadView() {
        welcomeScreen.buttonPressAction = handleButtonPress
        self.view = welcomeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func handleButtonPress() {

            let listController = ListController()
            //to force modal presentation of new screen to be fullScreen
            listController.modalPresentationStyle = .fullScreen

            //open new screen(ViewController)
            self.present(listController, animated: true, completion: nil)
//        }
    }
}



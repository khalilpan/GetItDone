//
//  ListController.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class ListController: UIViewController{
    
    let listScreen = ListScreen()
    
    override func loadView() {
        listScreen.addItemAction = addItem
        listScreen.cancelButtonAction = cancelButtonAction
        listScreen.saveButtonAction = saveButtonAction
    }
    
    override func viewDidLoad() {
        self.view = listScreen
    }
    
    func addItem() {
        print("from controller")
    }
    
    func cancelButtonAction() {
        print("Heeey canceeeel")
    }
    
    func saveButtonAction() {
        print("heeeey saaaave")
    }
}


    


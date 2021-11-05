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
    }
    
    override func viewDidLoad() {
        self.view = listScreen
    }
    
    func addItem() {
        print("from controller")
    }
}


    


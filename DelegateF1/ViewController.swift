//
//  ViewController.swift
//  DelegateF1
//
//  Created by Fausto Checa on 20/7/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

protocol HomeBuilder {
    func buildingYourHome()
}

struct Engineer: HomeBuilder {
    func buildingYourHome() {
        print("I am building your home just now")
    }
}

struct Client {
    var delegate:HomeBuilder
    
}

class ViewController: UIViewController {
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        let engineerCarlos = Engineer()
        let clientFausto = Client(delegate: engineerCarlos)
        
        clientFausto.delegate.buildingYourHome()
        
    }

   }


//
//  ViewController.swift
//  Pokedex-App
//
//  Created by Kleiton Mendes on 21/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


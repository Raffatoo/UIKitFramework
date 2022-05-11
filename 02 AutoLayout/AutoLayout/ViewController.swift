//
//  ViewController.swift
//  AutoLayout
//
//  Created by Cruz Torres on 05/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        
        self.view = OnboardingView()

    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}


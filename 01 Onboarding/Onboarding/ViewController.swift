//
//  ViewController.swift
//  Onboarding
//
//  Created by Cruz Torres on 05/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabell: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabell.textColor = .blue
        likeButton.setTitle("🍎🥑🍧", for: .normal)
    }
    
    @IBAction func didTapOnLike(_ sender: Any) {
        print("User emitio like")
        
    }

}



//
//  ViewController.swift
//  UIButton
//
//  Created by Cruz Torres on 11/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftButton1: UIButton = {
        
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Suscribete al Tutorial"
        configuration.subtitle = "Uso del button"
        configuration.image = UIImage(systemName: "play.circle.fill")

        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftButton2: UIButton = {
        
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Sucribete al Canal"
        configuration.titleAlignment = .center
        configuration.subtitle = "Una lección diaria"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .trailing
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let swiftButton3: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Otro boton mas mas"
        configuration.titleAlignment = .center
        configuration.subtitle = "con backgroun"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 5
        configuration.imagePlacement = .top
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .systemGreen
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftButton4: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Un boton mas con bordered"
        configuration.titleAlignment = .center
        configuration.subtitle = "Sin background imagen"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 6
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        //configuration.baseBackgroundColor = .systemPurple
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(swiftButton1)
        view.addSubview(swiftButton2)
        view.addSubview(swiftButton3)
        view.addSubview(swiftButton4)
        
        NSLayoutConstraint.activate([
            swiftButton1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            swiftButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton2.topAnchor.constraint(equalTo: swiftButton1.bottomAnchor, constant: 8),
            
            swiftButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton3.topAnchor.constraint(equalTo: swiftButton2.bottomAnchor, constant: 8),
            
            swiftButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton4.topAnchor.constraint(equalTo: swiftButton3.bottomAnchor, constant: 8),
        ])
    }
    
    func showMessage() {
       print("Button tapped!!!!")
    }
    
}


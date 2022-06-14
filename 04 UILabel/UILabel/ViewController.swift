//
//  ViewController.swift
//  UILabel
//
//  Created by Cruz Torres on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftLabel1: UILabel = {
        let label = UILabel()
        label.text = "Suscribete a Swift Code"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        label.textAlignment = .center
        label.textColor = .systemPurple
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let swiftLabel2: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500,"
        label.font = UIFont(name: "Arial", size: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let swiftLabel3: UILabel = {
        
        let text = "Hola, Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia."
        let attributedText: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.magenta,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.green,
            .font: UIFont.systemFont(ofSize: 32)
        ]
        let attributedString = NSAttributedString(string: text, attributes: attributedText)
        
        let label = UILabel()
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(swiftLabel1)
        view.addSubview(swiftLabel2)
        view.addSubview(swiftLabel3)
        
        NSLayoutConstraint.activate([
            swiftLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftLabel1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            swiftLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftLabel2.topAnchor.constraint(equalTo: swiftLabel1.bottomAnchor, constant: 12),
            swiftLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            
            swiftLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftLabel3.topAnchor.constraint(equalTo: swiftLabel2.bottomAnchor, constant: 12),
            swiftLabel3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftLabel3.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 32),
            
        ])
    }
}


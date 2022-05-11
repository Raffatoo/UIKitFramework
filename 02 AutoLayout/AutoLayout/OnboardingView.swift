//
//  OnboardingView.swift
//  AutoLayout
//
//  Created by Cruz Torres on 11/05/22.
//

import Foundation
import UIKit

// Creamos una clase que va heredar de UIView

final class OnboardingView: UIView {
    
    private let onboardingImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // esta propiedad permite agregar los constrains por código
        return imageView
        
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bienvenidos a la App de Rick and Morty"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnboardingButton: UIButton = {
        
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    // Metodo para añadir subview a la view
    private func setup() {
        addSubview()
        configureConstraints()
    }
    
    private func addSubview() {
        [onboardingImage, textLabel, skipOnboardingButton]
            .forEach(addSubview)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            
            onboardingImage.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onboardingImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingImage.trailingAnchor.constraint(equalTo:
                trailingAnchor),
            
            textLabel.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            skipOnboardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnboardingButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
        
    }
    
    
    @objc func showMessage() {
        print("Hola haz oprimid Onboarding")
    }
    
}

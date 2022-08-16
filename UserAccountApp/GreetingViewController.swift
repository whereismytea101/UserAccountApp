//
//  GreetingViewController.swift
//  UserAccountApp
//
//  Created by Самир Кафаров on 13.08.2022.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    
    @IBOutlet var greetingLabel: UILabel!
    
   var userName = ""
    private let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        greetingLabel.text = "Welcome, \(userName)!"
        }
    
    private func setupGradient() {
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPurple.cgColor,
            UIColor.systemPink
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
   }
}


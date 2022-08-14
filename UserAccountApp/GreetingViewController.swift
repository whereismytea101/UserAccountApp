//
//  GreetingViewController.swift
//  UserAccountApp
//
//  Created by Самир Кафаров on 13.08.2022.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
     var userName: String!
    private let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = userName
        setupGradient()
        }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.source as? MainViewController else { return }
        mainVC.userNameLableTF.text = ""
        mainVC.userPasswordLableTF.text = ""
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
    private func setupGradient() {
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPurple.cgColor,
            UIColor.systemPink
        ]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
   }
}


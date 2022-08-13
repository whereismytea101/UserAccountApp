//
//  ViewController.swift
//  UserAccountApp
//
//  Created by Самир Кафаров on 13.08.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameLable: UITextField!
    @IBOutlet var userPasswordLable: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var rememberingLogin: UIButton!
    @IBOutlet var rememberingPassword: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private let userName = "User"
    private let userPassword = "Password"
    
    
    @IBAction func logInButtonPressed(){
        
        guard let inputUserName = userNameLable.text, !inputUserName.isEmpty else {
            showLoginAlert(with: "Inavalid login or password",
                           and: "Please enter correct login and password")
            return
        }
        
        guard let inputPassword = userPasswordLable.text, !inputPassword.isEmpty else {
            showPasswordinAlert(with: "Inavalid login or password",
                                and: "Please enter correct login and password")
            return
        }
    }
    
    
    
    @IBAction func rememberingUserNameButton() {
        showLoginAlert(with: "Oops!🔥", and: "Your User Name is User 👀")
    }
    
    
    @IBAction func rememberingPasswordButton() {
        showPasswordinAlert(with: "Oops!🔥", and: "Your Password is Password 👀")
        
    }
    
    
    


}

// MARK: - UIAlertMainViewController
 
extension MainViewController {
    private func showLoginAlert(with title: String, and message: String) {
        let loginAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            //
        }
        
        loginAlert.addAction(okAction)
        present(loginAlert, animated: true)
    }
    
    private func showPasswordinAlert(with title: String, and message: String) {
        let passwordAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            //
        }
        
        passwordAlert.addAction(okAction)
        present(passwordAlert, animated: true)
    }
    
}

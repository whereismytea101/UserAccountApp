//
//  ViewController.swift
//  UserAccountApp
//
//  Created by Самир Кафаров on 13.08.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameLableTF: UITextField!
    @IBOutlet var userPasswordLableTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var rememberingLogin: UIButton!
    @IBOutlet var rememberingPassword: UIButton!
    
    
    private let userName = "User"
    private let userPassword = "Password"
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = "Welcome, \(userNameLableTF.text ?? "" )"
    }
    
    
    @IBAction func logInButtonPressed() {
        guard let inputUserName = userNameLableTF.text, !inputUserName.isEmpty else {
            showLoginAlert(with: "Inavalid login or password",
                           and: "Please enter correct login and password")
            return
        }
        guard let inputPassword = userPasswordLableTF.text, !inputPassword.isEmpty else {
            showPasswordinAlert(with: "Inavalid login or password",
                                and: "Please enter correct login and password")
            return
        }
}
    
    
    @IBAction func rememberingUserNameButton() {
        showLoginAlert(with: "Oops!🔥",
                       and: "Your User Name is \(userName) 👀")
    }
    
    @IBAction func rememberingPasswordButton() {
        showPasswordinAlert(with: "Oops!🔥",
                            and: "Your Password is \(userPassword) 👀")
    }
}

// MARK: - UIAlertMainViewController

extension MainViewController {
    private func showLoginAlert(with title: String, and message: String) {
        let loginAlert = UIAlertController(title: title,
                                           message: message,
                                           preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameLableTF.text = ""
            self.userPasswordLableTF.text = ""
        }
        
        loginAlert.addAction(okAction)
        present(loginAlert, animated: true)
    }
    
    private func showPasswordinAlert(with title: String, and message: String) {
        let passwordAlert = UIAlertController(title: title,
                                              message: message,
                                              preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordLableTF.text = ""
            self.userNameLableTF.text = ""
        }
        
        passwordAlert.addAction(okAction)
        present(passwordAlert, animated: true)
    }
    
}

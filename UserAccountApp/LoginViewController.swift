//
//  ViewController.swift
//  UserAccountApp
//
//  Created by Самир Кафаров on 13.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var nameLableTF: UITextField!
    @IBOutlet var passwordLableTF: UITextField!
    
    private let user = "Sam"
    private let password = "13"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = user
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        guard nameLableTF.text == user, passwordLableTF.text == password else {
            showAlert(with: "Inavalid login or password",
                      and: "Please enter correct login and password",
                      textField: passwordLableTF)
            return
        }
        performSegue(withIdentifier: "openGreetingVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Oops", and: "your User Name is \(user) 👀")
            : showAlert(with: "Oops", and: "your Password Name is \(password) 👀")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameLableTF.text = ""
        passwordLableTF.text = ""
    }
    
    
}

// MARK: - UIAlertMainViewController

extension LoginViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let loginAlert = UIAlertController(title: title,
                                           message: message,
                                           preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.nameLableTF.text = ""
            self.passwordLableTF.text = ""
        }
        
        loginAlert.addAction(okAction)
        present(loginAlert, animated: true)
    }
}

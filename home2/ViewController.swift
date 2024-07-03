//
//  ViewController.swift
//  HomeWorkInterface
//
//  Created by Тагир Файрушин on 02.07.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    var userDefaults = UserDefaults.standard
    
    let loginFirstUser: String = "admin"
    let passwordFirstUser: String = "admin"
    
    let loginSecondUser: String = "artur"
    let passwordSecondUser: String = "artur"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonTapped(_ sender: Any) {
  
        if let text1 = firstField.text, let text2 = secondField.text {
            if text1 == loginFirstUser && text2 == passwordFirstUser {
                    setUserProfile(user: loginFirstUser)
            }else if text1 == loginSecondUser && passwordSecondUser == text2{
                setUserProfile(user: loginSecondUser)
            } else {
                showAlert(title: "Ошибка", message: "Неверный логин")
            }
        }

    }

    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:.default))
        present(alertController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondViewController" {
            if let desctViewController = segue.destination as? SecondViewController {
                desctViewController.password = "123"
            }
        }
    }
    
    func getValueToUserDefaults() {
        print(userDefaults.string(forKey: "User") ?? "")
    }

    func setValueToUserDefaults(user: String) {
        userDefaults.setValue(user, forKey: "User")
    }
    
    func setUserProfile(user: String) {
        performSegue(withIdentifier: "SecondViewController", sender: self)
        setValueToUserDefaults(user: user)
        getValueToUserDefaults()
    }
}


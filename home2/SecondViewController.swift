//
//  SecondViewController.swift
//  home2
//
//  Created by Тагир Файрушин on 03.07.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var password: String = "123"
    
    var userDefaults = UserDefaults.standard

    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var dateField: UITextField!
    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var genre1: UILabel!
    
    @IBOutlet weak var genre2: UILabel!
    
    @IBOutlet weak var genre3: UILabel!
    
    @IBOutlet weak var genre4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if userDefaults.string(forKey: "User") == "admin" {
            nameField.text = "Файрушин Тагир Ленарович"
            dateField.text = "06.03.2005"
            emailField.text = "tfayrushin@bk.ru"
            genre1.text = "стихотворение"
            genre2.text = "поэма"
            genre3.text = "повесть"
            genre4.text = "роман"
        }
        if userDefaults.string(forKey: "User") == "artur" {
            nameField.text = "Забинский Данил Сергеевич"
            dateField.text = "29.09.2005"
            emailField.text = "sus@mail.ru"
            genre1.text = "документальное"
            genre2.text = "история"
            genre3.text = "программирование"
            genre4.text = "фантастика"
        }
    
    }
    
    func getValueToUserDefaults() {
        print(userDefaults.string(forKey: "User") ?? "")
    }

    func setValueToUserDefaults(user: String) {
        userDefaults.setValue(user, forKey: "User")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

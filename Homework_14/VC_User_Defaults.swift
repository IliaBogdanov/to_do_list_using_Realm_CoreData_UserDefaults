//
//  VC_User_Defaults.swift
//  Homework_14
//
//  Created by Илья Богданов on 29.11.2022.
//

import UIKit

class VC_User_Defaults: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var SurnameTextFiled: UITextField!
    
    @IBAction func saveNameButton(_ sender: Any) {
        if NameTextField.text == "" {NameTextField.placeholder = "Введите имя"}
        else {Persistance.shared.userName = NameTextField.text}
        if SurnameTextFiled.text == "" {SurnameTextFiled.placeholder = "Введите фамилию"}
        else {Persistance.shared.userSurname = SurnameTextFiled.text}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameStarUp()
        SurnameStarUp()
    }

    func NameStarUp() {
        if let name = Persistance.shared.userName {NameTextField.text = name}
        else {NameTextField.placeholder = "Name"}
    }
    
    func SurnameStarUp() {
        if let name = Persistance.shared.userSurname {SurnameTextFiled.text = name}
        else {SurnameTextFiled.placeholder = "Surname"}
    }
}

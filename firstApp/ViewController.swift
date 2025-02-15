//
//  ViewController.swift
//  firstApp
//
//  Created by Class on 15/02/25.
//

import UIKit
import Foundation


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstLabl: UILabel!
    @IBOutlet weak var userTextfield: UITextField!
    @IBOutlet weak var passwrdTextfield: UITextField!
    var alearMsg: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        passwrdTextfield.delegate = self
        userTextfield.delegate = self
    }
    
    
    @IBAction func submitBtn(_ sender: UIButton) {
        if userTextfield.text?.isEmpty == true || passwrdTextfield.text?.isEmpty == true {
            aleartMessage(message: "Failed")
        } else {
            aleartMessage(message: "Success")
        }
        
    }
    
    func aleartMessage(message: String) {
            aleartPopUp(aleartPop: message)
        }
    
    func aleartPopUp(aleartPop: String) {
        let alert = UIAlertController(title: "Alert", message: "\(aleartPop)", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        passwrdTextfield.text = ""
//        userTextfield.text = ""
//    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if userTextfield.text?.isEmpty == false && passwrdTextfield.text?.isEmpty != true {
            userTextfield.text = ""
            passwrdTextfield.text = ""
        }
    }
    
}


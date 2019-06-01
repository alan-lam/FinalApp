//
//  ViewController.swift
//  FinalApp
//
//  Created by Alan Lam on 6/1/19.
//  Copyright © 2019 ntrllog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myExistingUserTextField: UITextField!
    
    @IBOutlet weak var myNewUserTextField: UITextField!
    
    @IBAction func doContinueButton(_ sender: Any) {
        if myExistingUserTextField.text?.count == 0 && myNewUserTextField.text?.count == 0 {
            let vc = UIAlertController(title: "Alert", message: "Please select existing user or create a new one", preferredStyle: .alert)
            vc.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(vc, animated: true, completion: nil)
            return
        }
        // Check existing user
        if myExistingUserTextField.text == "demo" {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ConnectID") as! ConnectViewController
            present(vc, animated: true, completion: nil)
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


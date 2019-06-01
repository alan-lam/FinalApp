//
//  ConnectViewController.swift
//  FinalApp
//
//  Created by Alan Lam on 6/1/19.
//  Copyright © 2019 ntrllog. All rights reserved.
//

import UIKit

class ConnectViewController: UIViewController {

    @IBOutlet weak var myContinueWithoutConnectingSwitch: UISwitch!
    
    @IBAction func doContinueButton(_ sender: Any) {
    }
    
    @IBAction func doBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

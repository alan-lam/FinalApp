//
//  PairingViewController.swift
//  FinalApp
//
//  Created by Alan Lam on 6/1/19.
//  Copyright © 2019 ntrllog. All rights reserved.
//

import UIKit

class PairingViewController: UIViewController {

    @IBAction func doBackButton(_ sender: Any) {
    }
    
    @IBOutlet weak var myProgressView: UIProgressView!
    
    @IBAction func doSearchButton(_ sender: Any) {
        startTimer()
    }
    
    var myTimer:Timer!
    let TIME_INTERVAL:Float = 1.0
    let MAX_SEARCH_TIME:Float = 10.0
    let DEVICE_FOUND_TIME:Float = 5.0
    var numSearches = 0
    
    func startTimer() {
        // TODO: disable the search button
        numSearches += 1
        var currentCount:Float = 0.0
        myProgressView.progress = 0
        myTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(TIME_INTERVAL), repeats: true, block: { (timer) in
            currentCount += 1.0
            self.myProgressView.progress = currentCount / self.MAX_SEARCH_TIME
            /* This is our first search. We don't find the device in this case */
            if self.numSearches == 1 {
                if currentCount == self.MAX_SEARCH_TIME {
                    self.myTimer.invalidate()
                }
            }
            /* This time we will find the device */
            else if self.numSearches == 2 {
                if currentCount == self.DEVICE_FOUND_TIME {
                    self.myTimer.invalidate()
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SuccessID") as! SuccessViewController
                    self.present(vc, animated: true, completion: nil)
                }
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start our simulation for Bluetooth device by starting timer
        startTimer()
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

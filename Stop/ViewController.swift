//
//  ViewController.swift
//  Stop
//
//  Created by D7703_25 on 2018. 4. 10..
//  Copyright © 2018년 김재현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Lab: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func updateTime() {
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        Lab.text = String(format: "%02d:%02d:%02d", min, sec, msec)
        
    }

    @IBAction func BtS(_ sender: Any) {
        myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: {(myTimer) in self.updateTime()
            
        })
    }
    
    @IBAction func BtT(_ sender: Any) {
         myTimer.invalidate()
    }
    @IBAction func BtR(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        Lab.text = "00:00:00"
    }
}


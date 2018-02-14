//
//  ViewController.swift
//  Crypto Miner
//
//  Created by ZuluAlpha on 2/14/18.
//  Copyright © 2018 Solsma Dev Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var hashRateLabel: UILabel!
    @IBOutlet var submittedHashesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIApplication.shared.isIdleTimerDisabled = true
        let miner = Miner(destinationAddress: "48Dh15ZPbcCeAw8fsHi1kz8Tjct3WZp79RnffnekzNVNELKZEc171S1CSDnwC9f5YuHme1pzx1bZEMyii7Bu2STTL7UPigr")
        miner.delegate = self
        
        do {
            try miner.start()
        }
        catch {
            print("something bad happened")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

extension ViewController: MinerDelegate {
    func miner(updatedStats stats: MinerStats) {
        self.hashRateLabel.text = "\(stats.hashRate) H/s"
        self.submittedHashesLabel.text = "\(stats.submittedHashes)"
    }
}


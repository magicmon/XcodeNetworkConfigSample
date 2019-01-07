//
//  ViewController.swift
//  XcodeNetworkConfigSample
//
//  Created by magicmon on 2018. 11. 14..
//  Copyright © 2018년 magicmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var serverLabel: UILabel!
    @IBOutlet private var urlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        serverLabel.text = NetworkConfig.shared.host.rawValue
        urlLabel.text = NetworkConfig.shared.serverDomain
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


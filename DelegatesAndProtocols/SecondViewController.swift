//
//  SecondViewController.swift
//  DelegatesAndProtocols
//
//  Created by Rian Sanjaya Ng on 06/09/18.
//  Copyright © 2018 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

protocol CanReceiveDelegate {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondText: UITextField!
    
    var delegate: CanReceiveDelegate?
    var firstText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondLabel.text = firstText
    }

    @IBAction func sendBackData(_ sender: UIButton) {
        if let secondText = secondText.text {
            delegate?.dataReceived(data: secondText)
        }
        dismiss(animated: true, completion: nil)
    }
}

//
//  ViewController.swift
//  DelegatesAndProtocols
//
//  Created by Rian Sanjaya Ng on 06/09/18.
//  Copyright © 2018 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceiveDelegate {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendForward(_ sender: UIButton) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }

    @IBAction func changeBlue(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            let secondVC = segue.destination as! SecondViewController
            if let firstText = firstText.text {
                secondVC.firstText = firstText
            }
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        if data != "" {
            firstLabel.text = data
        }
    }
    
}


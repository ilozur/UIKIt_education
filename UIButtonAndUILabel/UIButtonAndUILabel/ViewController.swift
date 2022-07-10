//
//  ViewController.swift
//  UIButtonAndUILabel
//
//  Created by Edmond Podlegaev on 08/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)

        button.isHidden = true
        button.setTitle("Clear", for: .normal) // UIControl.State.normal
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
        for actionButton in actionButtons {
            actionButton.setTitleColor(.white, for: .normal)
            actionButton.backgroundColor = .green
        }
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.isHidden = true
            button.isHidden = true
        } else if sender.tag == 1 {
            label.text = "Hello, world!"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.text = "Hell, word1"
            label.textColor = .red
        }
        
        }
    
}


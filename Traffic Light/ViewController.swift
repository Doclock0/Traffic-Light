//
//  ViewController.swift
//  Traffic Light
//
//  Created by Виктория Струсь on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSign: UIView!
    
    @IBOutlet var yellowSign: UIView!
    
    @IBOutlet var greenSign: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redSign.layer.cornerRadius = 45
        yellowSign.layer.cornerRadius = 45
        greenSign.layer.cornerRadius = 45
        
        redSign.alpha = 0.3
        yellowSign.alpha = 0.3
        greenSign.alpha = 0.3
    
        // Do any additional setup after loading the view.
    }
    var nextSign = 1
    @IBAction func makeButtonAction() {
        switch nextSign {
            case 1:
            startButton.setTitle("NEXT", for: .normal)
            redSign.alpha = 1
            greenSign.alpha = 0.3
            nextSign = 2
            case 2:
            redSign.alpha = 0.3
            yellowSign.alpha = 1
            nextSign = 3
            case 3:
            yellowSign.alpha = 0.3
            greenSign.alpha = 1
            nextSign = 1
            default:
                break
            }
        }
    
}

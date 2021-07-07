//
//  ViewController.swift
//  trafficLightApp
//
//  Created by Константин Прокофьев on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var redLightViewIsOn = false
    var yellowLightViewIsOn = false
    var greenLightViewIsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 75
        redLightView.alpha = 0.4
        yellowLightView.layer.cornerRadius = 75
        yellowLightView.alpha = 0.4
        greenLightView.layer.cornerRadius = 75
        greenLightView.alpha = 0.4
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
        }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        if !redLightViewIsOn {
            redLightView.alpha = 1
        }
        }
}


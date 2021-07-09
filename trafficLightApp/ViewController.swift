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
        redLightView.alpha = 0.4
        yellowLightView.alpha = 0.4
        greenLightView.alpha = 0.4
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
        }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        if yellowLightViewIsOn {
                    yellowLightView.alpha = 1
                    redLightView.alpha = 0.4
                    yellowLightViewIsOn = false
                    greenLightViewIsOn = true
                } else if greenLightViewIsOn {
                    greenLightView.alpha = 1
                    yellowLightView.alpha = 0.4
                    redLightViewIsOn = true
                    greenLightViewIsOn = false
                } else {
                    redLightView.alpha = 1
                    greenLightView.alpha = 0.4
                    yellowLightViewIsOn = true
                    redLightViewIsOn = false
                }
        }
}


//
//  ViewController.swift
//  Stopwatch
//
//  Created by Sami Giray Doğrultucu on 6/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 0
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        timerLabel.text = String(time)
        time = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerApp), userInfo: nil, repeats: true)

    }
    
    @IBAction func stopButton(_ sender: Any) {
        
        timer.invalidate()
    }
    @IBAction func resetButton(_ sender: Any) {
        
       time = 0
        timerLabel.text = String(time)
        timer.invalidate()
    }


@objc func timerApp(){
    timerLabel.text = String(time)
    time += 1
    }
}


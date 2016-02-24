//
//  ViewController.swift
//  StopWatch
//
//  Created by Jinto Thomas Menachery on 19/02/16.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!

    var timerWhichFireOnEachSecond:NSTimer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tappedStopButton(sender: UIButton) {

    }

    @IBAction func tappedStartButton(sender: AnyObject) {
        var currentValue = (self.counterLabel.text! as NSString).floatValue
        timerWhichFireOnEachSecond = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("oneSecondCompleted"), userInfo: nil, repeats: true)
    }

    func oneSecondCompleted() {

    }
}


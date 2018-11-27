//
//  ViewController.swift
//  Light
//
//  Created by Antonio Porras on 11/26/18.
//  Copyright © 2018 Antonio Porras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var lightOn: Bool = true;
    
    var brightness: CGFloat = 1.0; //1.0 is maaximum, 0.0 is minimum
    
    //Outlet has been Disconnected to ad a Slider indtead of the Switch Button
    /*
    @IBOutlet weak var lightButton: UIButton! */

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    
    // SWIPE DOWN METHOD FOR THE "SWIPE GESTURE RECOGNIZER"
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        print("swipeDown");
        brightness -= 0.1;
        updateUI();
    }
    
    //SWIPE UP METHOD FOR THE "SWIPE GESTURE RECOGNIZER"
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        print("swipeUp")
        brightness += 0.1;
        updateUI()
    }
    
    // IBAction has been Disconnected to ad a "Swipe Gesture Recognizer"
    /*
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("sliderValueCHanged \(sender.value)");
        brightness = CGFloat(sender.value);
        updateUI() */
    
    // IBAction button Pressed Disconnected to ad a "Slider"
    /*
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn;
        //      The line above is the same than the lines below:
        //        if lightOn == true {
        //            lightOn = false;
        //        } else {
        //            lightOn = true;
        //        }
        updateUI()
    } */
    
    func updateUI() {
        view.backgroundColor = UIColor(red: brightness, green: brightness, blue: brightness, alpha: 1.0);
    }
    
    
}


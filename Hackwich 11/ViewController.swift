//
//  ViewController.swift
//  Hackwich 11
//
//  Created by Cassie Kauhane on 11/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //1 create alert view
       let alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
        //2 button that user taps to dismiss vc
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        //3 add th button to alert view
        alert.addAction(action)
             //4 present view on screen
        present(alert, animated: true, completion: nil)
        startNewRound()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = Int(slider.value)
        
        startNewRound()
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is: \(slider.value)")
        currentValue = Int((slider.value))
        
        targetValue = Int.random(in: 0...100)
    }
    
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    func startNewRound(){
        currentValue = Int(slider.value)
        
        targetValue = Int.random(in: 0...100)
        
    }
}


//
//  ViewController.swift
//  ToDoList
//
//  Created by 박도연 on 2022/10/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    
    let randomIndex = Int(arc4random_uniform(30))
    
    @IBOutlet weak var mid: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SliderValueChanged(_ sender: UISlider) {
//         Int(sender.value)
        print(Int(sender.value))
    }
    

    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(Slider.value)
        var a = Int(Slider.value)
    
        if a > randomIndex {
            print("down")
            mid.text = "down"
        }
        else if a == randomIndex{
            mid.text = "성공"
        }
        else {
            mid.text = "up"
            print("up")
        }
        
        
        
    }
    
}


//
//  MagicalViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 26/01/21.
//

import UIKit

class MagicalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = generateRandomColor()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.backgroundColor = generateRandomColor()
          }
    }
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }

}

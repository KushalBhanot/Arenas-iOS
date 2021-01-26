//
//  BlueViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 26/01/21.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Blue Circle Arena"
        view.backgroundColor = .white
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: view)
        let blueCircle = UIView(frame: CGRect(x: location.x, y: location.y, width: 50, height: 50))
        blueCircle.backgroundColor = .blue
        blueCircle.layer.cornerRadius = blueCircle.frame.size.width/2
        view.addSubview(blueCircle)
    }
}

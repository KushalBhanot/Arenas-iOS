//
//  RedViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 26/01/21.
//

import UIKit

class RedViewController: UIViewController {
    
    var redSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "Red Square Arena"
        view.backgroundColor = .white
        
//        navigationController?.navigationBar.barTintColor = UIColor.green
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: view)
        let redSquare = UIView(frame: CGRect(x: location.x, y: location.y, width: 50, height: 50))
        redSquare.backgroundColor = .red
        view.addSubview(redSquare)
    }
}

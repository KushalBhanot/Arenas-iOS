//
//  ViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 24/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    var redArenaButton: UIButton!
    var blueArenaButton: UIButton!
    var magicalArenaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        redArenaButton = UIButton()
        redArenaButton.translatesAutoresizingMaskIntoConstraints = false
        redArenaButton.setTitle("Red Arena", for: .normal)
        redArenaButton.setTitleColor(.red, for: .normal)
        redArenaButton.addTarget(self, action: #selector(pushRedArena), for: .touchUpInside)
        view.addSubview(redArenaButton)
        
        blueArenaButton = UIButton()
        blueArenaButton.translatesAutoresizingMaskIntoConstraints = false
        blueArenaButton.setTitle("Blue Arena", for: .normal)
        blueArenaButton.setTitleColor(.blue, for: .normal)
        blueArenaButton.addTarget(self, action: #selector(presentBlueArena), for: .touchUpInside)
        view.addSubview(blueArenaButton)
        
        magicalArenaButton = UIButton()
        magicalArenaButton.translatesAutoresizingMaskIntoConstraints = false
        magicalArenaButton.setTitle("Magical Arena", for: .normal)
        magicalArenaButton.setTitleColor(.purple, for: .normal)
        magicalArenaButton.addTarget(self, action: #selector(pushMagicalArena), for: .touchUpInside)
        view.addSubview(magicalArenaButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            redArenaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redArenaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -48),
            redArenaButton.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            blueArenaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueArenaButton.topAnchor.constraint(equalTo: redArenaButton.bottomAnchor, constant: 16),
            blueArenaButton.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            magicalArenaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicalArenaButton.topAnchor.constraint(equalTo: blueArenaButton.bottomAnchor, constant: 16),
            magicalArenaButton.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    @objc func pushRedArena() {
        let newViewController = RedViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
    @objc func presentBlueArena() {
        let newViewContoller = BlueViewController()
        present(newViewContoller, animated: true, completion: nil)
    }
    
    @objc func pushMagicalArena() {
        let newViewController = MagicalViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
}


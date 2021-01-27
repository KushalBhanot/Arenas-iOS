//
//  RedViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 26/01/21.
//

import UIKit

class RedViewController: UIViewController {
    
    weak var delegate: RedNameDelegate?
    
    var arenaName: UILabel!
    var arenaNameInput: UITextField!
    
    var placeholderText: String

    init(placeholder: String) {
        self.placeholderText = placeholder
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "Red Square Arena"
        view.backgroundColor = .white
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(changeArenaName))
        
        arenaName = UILabel()
        arenaName.translatesAutoresizingMaskIntoConstraints = false
        arenaName.text = "Arena Name: "
        arenaName.textColor = .black
        arenaName.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        view.addSubview(arenaName)
        
        arenaNameInput = UITextField()
        arenaNameInput.translatesAutoresizingMaskIntoConstraints = false
        arenaNameInput.borderStyle = .roundedRect
        arenaNameInput.placeholder = placeholderText
        view.addSubview(arenaNameInput)
        
//        navigationController?.navigationBar.barTintColor = UIColor.green
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            arenaName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            arenaName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            arenaName.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            arenaNameInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            arenaNameInput.leadingAnchor.constraint(equalTo: arenaName.trailingAnchor, constant: 10),
            arenaNameInput.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func changeArenaName() {
        if let text = arenaNameInput.text, text != "" {
            delegate?.changeRedButtonName(newTitle: text)
        }
        navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: view)
        let redSquare = UIView(frame: CGRect(x: location.x, y: location.y, width: 50, height: 50))
        redSquare.backgroundColor = .red
        view.addSubview(redSquare)
    }
}

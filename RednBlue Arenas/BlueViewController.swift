//
//  BlueViewController.swift
//  RednBlue Arenas
//
//  Created by kushal on 26/01/21.
//

import UIKit

class BlueViewController: UIViewController {
    
    weak var delegate: BlueNameDelegate?
    
    var arenaName: UILabel!
    var arenaNameInput: UITextField!
    var saveButton: UIButton!
    
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
        title = "Blue Circle Arena"
        view.backgroundColor = .white
        
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
        //        arenaNameInput.backgroundColor = .white
        //        arenaNameInput.textAlignment = .center
        view.addSubview(arenaNameInput)
        
        saveButton = UIButton()
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.blue, for: .normal)
        //        saveButton.setTitleColor(.black, for: .selected)
        saveButton.addTarget(self, action: #selector(changeArenaName), for: .touchUpInside)
        view.addSubview(saveButton)
        
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
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            saveButton.leadingAnchor.constraint(equalTo: arenaNameInput.leadingAnchor),
            saveButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func changeArenaName() {
        if let text = arenaNameInput.text, text != "" {
            delegate?.changeBlueButtonName(newTitle: text)
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: view)
        let blueCircle = UIView(frame: CGRect(x: location.x, y: location.y, width: 50, height: 50))
        blueCircle.backgroundColor = .blue
        blueCircle.layer.cornerRadius = blueCircle.frame.size.width/2
        view.addSubview(blueCircle)
    }
}

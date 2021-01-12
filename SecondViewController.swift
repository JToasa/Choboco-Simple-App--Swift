//
//  SecondViewController.swift
//  FinalProject1.2
//
//  Created by user188518 on 12/12/20.
//  Copyright © 2020 user188518. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
//++++++++++++++++++++   FUNCTION & METHODS   +++++++++++++++++++++++++++++++++++++++++++++
    let questionLabel = UILabel()
    let chocoimageView = UIImageView(image: #imageLiteral(resourceName: "Nchoco"))
    
    
    fileprivate func questionLabels() {
    questionLabel.numberOfLines = 0
    questionLabel.text = "Choboco!!"
    questionLabel.textAlignment = .center
    questionLabel.font = UIFont(name: "Futura", size: 13)
    questionLabel.numberOfLines = 0
    questionLabel.textAlignment = .center
    questionLabel.text = "Wanna hear a Secret?!"
    
    }

    fileprivate func setupStack(){
        let stackView = UIStackView(arrangedSubviews:[questionLabel, chocoimageView])
        stackView.axis = .vertical
        stackView.spacing = 10
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -150).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
    }
    
    @IBAction func yeswhenClicked(_ sender: UIButton) {
        animationonClicked_YES()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animationonClicked_YES)))
    }
    
    
    @IBAction func nowhenClicked(_ sender: UIButton) {
        animationonClicked_NO()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animationonClicked_YES)))
    }
    
    //++++++++++++++++++++++++   MAIN   +++++++++++++++++++++++++++++++++++++++++++++++++++
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        questionLabels()
        setupStack()
        
      
        
        }
    //+++++++++++++++++++++++   Animation  ++++++++++++++++++++++++++++++++++++++++++++++
    
    @objc fileprivate func animationonClicked_YES(){
        print("Animation on Clicked")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
        
        self.chocoimageView.alpha = 0
        self.chocoimageView.transform = self.chocoimageView.transform.translatedBy(x: 0, y: -200)
        })
    }

    @objc fileprivate func animationonClicked_NO(){
        print("Animation on Clicked")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
        
        self.chocoimageView.alpha = 0
        self.chocoimageView.transform = self.chocoimageView.transform.translatedBy(x: 0, y: 200)
        })
    }
    
    
    }
    

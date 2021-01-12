//
//  ViewController.swift
//  FinalProject1.2
//
//  Created by user188518 on 12/12/20.
//  Copyright © 2020 user188518. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //+++++++++++++++++++  Function and Methods  ++++++++++++++++++++++++++++++++
    
    //Actimated when onClicked
    @IBAction func Action(_ sender: Any) {
        AnimationTap()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AnimationTap)))

    }
    
    
    let Chobocoimageview: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "ChobocoHappy"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
        fileprivate func setupLayout(){
            Chobocoimageview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            Chobocoimageview.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
            Chobocoimageview.widthAnchor.constraint(equalToConstant: 220).isActive = true
            Chobocoimageview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        }
    //+++++++++++++++++++++++  MAIN  ++++++++++++++++++++++++++++++++++++++++++++
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(Chobocoimageview)
        setupLayout()
        
        //view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AnimationTap)))

        
    }
    //+++++++++++++++++++++++++++++++++++  Animations   +++++++++++++++++++++++++++++++++
    @objc fileprivate func AnimationTap(){
        print("Animation")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.Chobocoimageview.alpha = 0
            self.Chobocoimageview.transform = self.Chobocoimageview.transform.translatedBy(x: 0, y: -200)
            
        })
    }
    
    
    @objc fileprivate func transDelay(){
        print("Animation Transition")
        present(SecondViewController(), animated: true)
        
        }
    }


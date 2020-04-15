//
//  ViewController.swift
//  CinemaHub
//
//  Created by DangTrungHieu on 4/6/20.
//  Copyright © 2020 DangTrungHieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let animateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutAnimateButton()
    }
    
    @objc private func animateButtonPressed() {
        
        for _ in 0...10 {
            
            let duration : TimeInterval = 1.0
            let delay    : TimeInterval = TimeInterval((900 + arc4random_uniform(100)) / 1000)
            let options = UIView.AnimationOptions.curveLinear
            
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200)) + 20
            
            let apple = UIImageView()
            apple.frame = CGRect(x: 0 - size, y: yPosition, width: size, height: size)
            apple.image = UIImage(named: "logo")
            self.view.addSubview(apple)
            
            UIView.animate(withDuration: duration, delay: delay, options: options, animations: {
                apple.frame = CGRect(x: 320, y: yPosition, width: size, height: size)
                
            }, completion: { animationFinished in
                
                apple.removeFromSuperview()
                
            })
        }
    }
    
    private func layoutAnimateButton() {
        view.addSubview(animateButton)
        animateButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-15)
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
    }
    
}


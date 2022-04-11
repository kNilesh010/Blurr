//
//  ViewController.swift
//  Blurr
//
//  Created by Nilesh Kumar on 17/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    let contentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.backgroundColor = .systemGreen
        view.addSubview(contentView)
    }

    override func viewDidLayoutSubviews() {
        
        contentView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300.0)
        
        let myImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 150.0, height: 150.0))
        myImage.image = UIImage(systemName: "bookmark")
        myImage.center = contentView.center
        myImage.layer.masksToBounds = true
        myImage.layer.cornerRadius = 75.0
        myImage.backgroundColor = .white
        contentView.addSubview(myImage)
        
        let backgroundImage = UIImageView(frame: contentView.bounds)
        contentView.addSubview(backgroundImage)
        contentView.sendSubviewToBack(backgroundImage)
        backgroundImage.image = UIImage(named: "image1")
        
        let blurreffect = UIBlurEffect(style: .light)
        
        let blurView = UIVisualEffectView(effect: blurreffect)
        blurView.frame = contentView.bounds
        contentView.addSubview(blurView)
        
        contentView.sendSubviewToBack(blurView)
        contentView.sendSubviewToBack(backgroundImage)
    }

}


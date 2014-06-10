//
//  RootViewController.swift
//  swift-gif
//
//  Created by Arne Bahlo on 10.06.14.
//  Copyright (c) 2014 Arne Bahlo. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageData = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("jeremy", withExtension: "gif"))
        let jeremy = UIImage.animatedImageWithData(imageData)
        var imageView = UIImageView(image: jeremy)
        imageView.frame = CGRect(x: 0.0, y: 20.0, width: 350.0, height: 202.0)
        
        view.addSubview(imageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

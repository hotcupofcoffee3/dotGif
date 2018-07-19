//
//  ViewController.swift
//  dotGif
//
//  Created by Adam Moore on 7/18/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dot = DotGif()
    
    @IBOutlet weak var dotGif: UIImageView!
    
    @IBAction func start(_ sender: UIButton) {
        
        dot.runDotGif(action: .start)
        
    }
    
    @IBAction func stop(_ sender: UIButton) {
        
        dot.runDotGif(action: .stop)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dot.imageView = dotGif
       
    }

}


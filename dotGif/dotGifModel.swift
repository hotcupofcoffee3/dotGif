//
//  dotGifModel.swift
//  dotGif
//
//  Created by Adam Moore on 7/18/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import Foundation
import UIKit

class DotGif {
    
    enum Action {
        
        case start
        case stop
        
    }
    
    var timer = Timer()
    
    var imageView: UIImageView?
 
    var isStarted = false
    
    var currentNumber = 1
    
    @objc func animateDotGif() {
        
        imageView?.image = UIImage(named: "dots.00\(currentNumber).png")!
        
        currentNumber = (currentNumber < 3) ? (currentNumber + 1) : 1
        
    }
    
    func runDotGif(action: Action) {
        
        if action == .start && isStarted == false {
            
            timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.animateDotGif), userInfo: nil, repeats: true)
            
            imageView?.alpha = 1.0
            
            isStarted = true
            
        } else if action == .stop {
            
            timer.invalidate()
            
            imageView?.alpha = 0.0
            
            isStarted = false
            
            currentNumber = 1
            
        }
        
    }
    
}

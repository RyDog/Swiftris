//
//  GameViewController.swift
//  Swiftris
//
//  Created by John Melogy on 5/26/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Configure the view.
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        
        //Create and configure the scene
        
        scene = GameScene(size: skView.bounds.size)
 
        scene.scaleMode = .AspectFill
        
        
        //Present the scene.
        
        skView.presentScene(scene)
        
   
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

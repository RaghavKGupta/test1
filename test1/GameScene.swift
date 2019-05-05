//
//  GameScene.swift
//  test1
//
//  Created by Raghav Gupta on 5/3/19.
//  Copyright © 2019 Raghav Gupta. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var buttonPlay: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        buttonPlay = self.childNode(withName: "buttonPlay") as? SKSpriteNode
        // Create shape node to use during mouse interaction
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        //self.loadGame()
        // load the next screen for the game here.
        print("hello")
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        let wait = SKAction.wait(forDuration: TimeInterval())
        print(wait)
        // can also use random(in: 1 .. 100) for random numbers b/w 1 - 100
        if(arc4random() % 200 < 1) {
            let x = arc4random() % UInt32(self.size.width)-10
            let y = arc4random() % UInt32(self.size.height)-10
            print(CGPoint(x: Int(x), y: Int(y)))
        }
        
    }
}

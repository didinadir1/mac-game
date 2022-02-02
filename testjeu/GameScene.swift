//
//  GameScene.swift
//  testjeu
//
//  Created by Hubert Phrinfo on 15/01/2019.
//  Copyright © 2019 Hubert Phrinfo. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
   
    private var spaceCar : SKSpriteNode!
    private var torpedo : SKSpriteNode!
    private var littleBackground : SKSpriteNode!

    
    
    
    override func didMove(to view: SKView) {
    
        
        self.spaceCar = self.childNode(withName: "//spaceCar") as? SKSpriteNode
    
        self.torpedo = self.childNode(withName: "//torpedo") as? SKSpriteNode
        self.littleBackground = self.childNode(withName: "//littleBackground") as? SKSpriteNode
        createBackground()
    }
    func createBackground() {

        for i in 0 ... 1 {
//            littleBackground.zPosition = -30
//            littleBackground.anchorPoint = CGPoint.zero
//            littleBackground.position = CGPoint(x: (littleBackground.size.width * CGFloat(i)) - CGFloat(1 * i), y: 100)
//            addChild(littleBackground)
            let moveLeft = SKAction.moveBy(x: -littleBackground.size.width-200, y: 0, duration: 3)
            let moveReset = SKAction.moveBy(x: littleBackground.size.width, y: 0, duration: 0)
            let moveLoop = SKAction.sequence([moveLeft, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)

            littleBackground.run(moveForever)
        }
        
    }
    
    override func keyDown(with event: NSEvent) {
       
        
            if event.keyCode == 123 {
                spaceCar.position = CGPoint(x:spaceCar.position.x - 10,y:spaceCar.position.y)
            }
        
            if event.keyCode == 124{
                spaceCar.position = CGPoint(x:spaceCar.position.x + 10,y:spaceCar.position.y)
            }
        
            if event.keyCode == 125 {
                spaceCar.position = CGPoint(x:spaceCar.position.x,y:spaceCar.position.y - 10)
            }
            
            if event.keyCode == 126{
                spaceCar.position = CGPoint(x:spaceCar.position.x ,y:spaceCar.position.y + 10)
            }
        
           if event.keyCode == 49 {
            torpedo.position = CGPoint(x:spaceCar.position.x+10,y:spaceCar.position.y)
           }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

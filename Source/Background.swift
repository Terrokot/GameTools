//Background.swift
//  Created 5.03.21
//  

import Foundation
import SpriteKit
import UIKit

public class Background: SKSpriteNode {
    
    public convenience init(at point: CGPoint, size: CGSize) {
        self.init(texture: SKTexture(imageNamed: "background_game"), size: size)
        position    = point
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        zPosition   = 0
        physicsBody = SKPhysicsBody(rectangleOf: size, center: anchorPoint)
        physicsBody?.categoryBitMask = 0
        physicsBody?.collisionBitMask = 0
        physicsBody?.isDynamic = true
        physicsBody?.allowsRotation = false
        physicsBody?.affectedByGravity = false
    }
    public func autoMoveByX(speed: CGFloat) {
        physicsBody?.velocity.dx = speed
    }
    public func autoMoveByY(speed: CGFloat) {
        physicsBody?.velocity.dy = speed
    }
}

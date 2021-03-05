//
//  GameField.swift
//
//  Created by Egor Tereshonok on 3/5/21.

import Foundation
import UIKit

public struct GameField {
    let topLeftPoint : CGPoint
    let topRightPoint: CGPoint
    let bottomLeftPoint: CGPoint
    let bottomRightPoint: CGPoint
    
    public init(topLeftPoint: CGPoint, topRightPoint: CGPoint, bottomLeftPoint: CGPoint, bottomRightPoint: CGPoint) {
        self.topLeftPoint     = topLeftPoint
        self.topRightPoint    = topRightPoint
        self.bottomLeftPoint  = bottomLeftPoint
        self.bottomRightPoint = bottomRightPoint
    }
    public init() {
        self.topLeftPoint     = CGPoint()
        self.topRightPoint    = CGPoint()
        self.bottomLeftPoint  = CGPoint()
        self.bottomRightPoint = CGPoint()
    }
}

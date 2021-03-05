//
//  Direction.swift
//
//  Created by Egor Tereshonok on 12/15/20.

public enum Direction {
    case left
    case right
    case up
    case down
    
    public mutating func switchDirection() {
        switch self {
        case .down:
            self = .up
        case .up:
            self = .down
        case .left:
            self = .right
        case .right:
            self = .left
        }
    }
}

public enum HorizontalDirection {
    case left
    case right
    
    public mutating func switchDirection() {
        
        self = self == .left ? .right : .left
    }
}

public enum VerticalDirection {
    case up
    case down
    
    public mutating func switchDirection() {
        
        self = self == .up ? .down : .up
    }
}




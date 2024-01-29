//
//  Animation.swift
//  HW-3.01
//
//  Created by Alexander on 27.01.2024.
//

import Foundation

struct Animation {
    
    let currentAnimation: String
    let currentCurve: String
    let currentForce: Double
    let currentDamping: Double
    let currentVelocity: Double
    
    var description: String {
        """
        Preset: \(currentAnimation)
        Curve: \(currentCurve)
        Force: \(String(format: "%.2f", currentForce))
        Damping: \(String(format: "%.2f", currentDamping))
        Velocity: \(String(format: "%.2f", currentVelocity))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        let data = SpringAnimationStore.shared
        
        let animation = Animation(
            currentAnimation: data.animations.randomElement() ?? "pop",
            currentCurve: data.curves.randomElement() ?? "easeIn",
            currentForce: Double.random(in: 1...5),
            currentDamping: Double.random(in: 0...1),
            currentVelocity: Double.random(in: 0...1)
        )
        return animation
    }
}

//
//  ViewController.swift
//  HW-3.01
//
//  Created by Alexander on 27.01.2024.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var parameterValueLabel: UILabel! {
        didSet {
            parameterValueLabel.text = animationParameters.description
        }
    }

    private var animationParameters = Animation.getRandomAnimation()
    
    
    @IBAction func animationButtonTapped(_ sender: UIButton) {
        parameterValueLabel.text = animationParameters.description
        launchViewAnimation()
        animationParameters = Animation.getRandomAnimation()
        sender.setTitle("Run \(animationParameters.currentAnimation)", for: .normal)
    }
    
    private func launchViewAnimation() {
        springAnimationView.animation = animationParameters.currentAnimation
        springAnimationView.curve = animationParameters.currentCurve
        springAnimationView.force = animationParameters.currentForce
        springAnimationView.damping = animationParameters.currentDamping
        springAnimationView.velocity = animationParameters.currentVelocity
        springAnimationView.animate()
    }
}

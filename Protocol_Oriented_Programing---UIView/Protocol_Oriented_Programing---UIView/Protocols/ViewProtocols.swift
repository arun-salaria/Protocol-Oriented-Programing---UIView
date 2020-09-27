//
//  ViewProtocols.swift
//  Protocol_Oriented_Programing---UIView
//
//  Created by arun on 27/09/20.
//
import UIKit

// Always use protocols for decompiling to provide more flexibility


protocol RoundCorners {}
extension RoundCorners where Self: UIView {
    func roundCorner(radius:CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}

protocol AddShadow {}
extension AddShadow where Self: UIView {
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
    }
}

protocol AnimationProtocols {}
extension AnimationProtocols where Self:UIView {
    func fadeAnimation(){
        self.alpha = 0.0
        UIView.animate(withDuration: 1) {
            self.alpha = 1.0
        }
    }
}

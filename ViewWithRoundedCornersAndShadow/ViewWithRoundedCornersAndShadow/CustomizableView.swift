//
//  CustomizableView.swift
//  ViewWithRoundedCornersAndShadow
//
//  Created by Elizabeth Rudenko on 18/03/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit.UIView

class CustomizableView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.masksToBounds = true
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var shadowColor: UIColor?
    @IBInspectable var opacity: Float = 0
    @IBInspectable var offsetX: CGFloat = 0
    @IBInspectable var offsetY: CGFloat = 0
    @IBInspectable var radius: CGFloat = 0

    private var shadowView: UIView!

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupShadow()
    }

    func setupShadow() {
        guard let shadowColor = shadowColor else { return }
        shadowView = UIView(frame: frame)
        shadowView.layer.setupShadow(color: shadowColor,
                                     alpha: opacity,
                                     shadowX: offsetX,
                                     shadowY: offsetY,
                                     blur: radius)
        superview?.addSubview(shadowView)
        superview?.bringSubviewToFront(self)
    }

    func removeShadow() {
        shadowView.removeFromSuperview()
    }
}

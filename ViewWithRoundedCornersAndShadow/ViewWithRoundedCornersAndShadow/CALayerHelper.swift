//
//  CALayerHelper.swift
//  ViewWithRoundedCornersAndShadow
//
//  Created by Elizabeth Rudenko on 18/03/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit

extension CALayer {
    func setupShadow(color: UIColor = .gray,
                     alpha: Float = 0.5,
                     shadowX: CGFloat = 0,
                     shadowY: CGFloat = 2,
                     blur: CGFloat = 4) {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: shadowX, height: shadowY)
        shadowRadius = blur
        shadowPath = UIBezierPath(rect: bounds).cgPath
    }
}

//
//  ViewController.swift
//  ViewWithRoundedCornersAndShadow
//
//  Created by Elizabeth Rudenko on 18/03/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customView: CustomizableView!
    private let removeTitle = "Remove shadow"
    private let setTitle = "Set shadow"
    private var shadowHidden = false

    @IBAction func buttonAction(sender: UIButton) {
        sender.setTitle(shadowHidden ? removeTitle : setTitle, for: .normal)
        shadowHidden ? customView.setupShadow() : customView.removeShadow()
        shadowHidden = !shadowHidden
    }
}


//
//  ViewController.swift
//  CocoaGrapes
//
//  Created by Eric Peterson on 5/27/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit
import SwiftGifOrigin
import MarqueeLabel

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var label: MarqueeLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dankImage = UIImage.gif(name: "dankgrapes")
        imageView.image = dankImage
        
        label = MarqueeLabel(frame: CGRect.zero, rate: 30, fadeLength: 10.0)
        label.text = "According to all known laws of aviation, there is no way a bee should be able to fly. Its wings are too small to get its fat little body off the ground. The bee, of course, flies anyway because bees don't care what humans think is impossible."
        label.animationCurve = .easeInOut
        label.trailingBuffer = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        label.tapToScroll = true
        self.view.addSubview(label)
        
        // Constraints
        var constraints: [NSLayoutConstraint] = []
        constraints.append(label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor))
        constraints.append(label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor))
        constraints.append(label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        self.view.addConstraints(constraints)
    }
}

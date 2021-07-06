//
//  ViewController.swift
//  KaznacheevAS_HW2.1.2
//
//  Created by Kaznacheev on 06.07.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var svetoforRed: UIView!
    @IBOutlet weak var svetoforYelou: UIView!
    @IBOutlet weak var svetoforGreen: UIView!
    
    @IBOutlet weak var bottomStartt: UIButton!
    
    
    private var currenLing = CurrentLight.red
    
    private let alphaOf: CGFloat = 0.3
    private let alphaOne: CGFloat = 1
    
    
    private let radiusDate: CGFloat = 55
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        svetoforRed.layer.cornerRadius = radiusDate
        svetoforGreen.layer.cornerRadius = radiusDate
        svetoforYelou.layer.cornerRadius = radiusDate
        
        svetoforYelou.alpha = alphaOf
        svetoforRed.alpha = alphaOf
        svetoforGreen.alpha = alphaOf
        
        bottomStartt.layer.cornerRadius = 10
    }

    @IBAction func activeBottomSart() {
        
        if bottomStartt.currentTitle == "START" {
            bottomStartt.setTitle( "NEXT", for: .normal)
        }
        
        
        switch currenLing {
            case .red:
                svetoforGreen.alpha = alphaOf
                svetoforRed.alpha = alphaOne
                currenLing = .yellow

            case .yellow:
                svetoforRed.alpha = alphaOf
                svetoforYelou.alpha = alphaOne
                currenLing = .green
            case .green:
                svetoforYelou.alpha = alphaOf
                svetoforGreen.alpha = alphaOne
                currenLing = .red
        }
        
        
        
        
    }
    
}


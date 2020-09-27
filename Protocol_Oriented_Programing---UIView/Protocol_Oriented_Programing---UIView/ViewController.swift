//
//  ViewController.swift
//  Protocol_Oriented_Programing---UIView
//
//  Created by arun on 27/09/20.
//

import UIKit

class CustomView:UIView,RoundCorners{
    
}
class CustomLabel:UILabel,RoundCorners,AnimationProtocols,AddShadow{
    
}
class CustomButton:UIButton,RoundCorners{
    
}

class ViewController: UIViewController {

    @IBOutlet weak var animateTextBtn: CustomButton!
    @IBOutlet weak var samplelbl: CustomLabel!
    @IBOutlet weak var labelBGView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBGView.roundCorner(radius: 30)
        animateTextBtn.roundCorner(radius: 4)
        
        samplelbl.roundCorner(radius: 4)
        samplelbl.addShadow()
        
    }

    @IBAction func didTapOnAnimateBtn(_ sender: Any) {
        samplelbl.fadeAnimation()
    }
}


//
//  StarView.swift
//  StarView
//
//  Created by Damian Kanak on 20/09/2018.
//  Copyright © 2018 Damian Kanak. All rights reserved.
//

import UIKit

@IBDesignable class StarView: UIView {
    
    @IBInspectable var numberOfStars : Int = 1
    @IBInspectable var normalImage : UIImage = UIImage()
    @IBInspectable var highlightedImage : UIImage = UIImage()
    
    private var buttons = [UIButton]()
    
    var buttonPressed : (Int)->Void = { (n: Int) in print("button pressed \(n)") }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layoutStars()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        layoutStars()
    }
    
    func layoutStars() {
        self.subviews.forEach { $0.removeFromSuperview() }
        
        for buttonNumber in 0..<numberOfStars {
            let buttonWidth = self.frame.width / CGFloat(numberOfStars)
            let buttonHeight = self.frame.height
            
            let buttonFrame = CGRect(x: buttonWidth * CGFloat(buttonNumber), y: 0, width: buttonWidth, height: buttonHeight).integral
            let button = UIButton(frame: buttonFrame)
            
            button.setImage(normalImage, for: .normal)
            button.setImage(highlightedImage, for: .selected)
            button.setImage(highlightedImage, for: .highlighted)
            button.tag = buttonNumber
            
            button.addTarget(self,
                             action:#selector(StarView.buttonDidTap(_:)),
                             for: .touchUpInside)
            
            buttons.append(button)
            self.addSubview(button)
        }
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        buttonPressed(sender.tag)
    }
}


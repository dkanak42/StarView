//: [Previous](@previous)

import UIKit
import PlaygroundSupport

/*
 * The challenge is to make all subviews visible and placed correctly within composite view
 */

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 150, width: 200, height: 20)
        label.text = "Adjust frame values!"
        label.textColor = .black
        
        view.addSubview(label)
        view.addSubview(compositeView())
        self.view = view
    }
    
    func compositeView() -> UIView {
        let firstViewFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
        let firstView = UIView(frame: firstViewFrame)
        firstView.backgroundColor = .black
        
        let secondViewFrame = CGRect(x: 50, y: 0, width: 50, height: 50)
        let secondView = UIView(frame: secondViewFrame)
        
        let thirdViewFrame = CGRect(x: 100, y: 0, width: 50, height: 50)
        let thirdView = UIView(frame: thirdViewFrame)
        
        let fourthViewFrame = CGRect(x: 150, y: 0, width: 50, height: 50)
        let fourthView = UIView(frame: fourthViewFrame)
        
        let containerViewFrame = CGRect(x: 0, y: 200, width: 80, height: 80)
        let containerView = UIView(frame: containerViewFrame)
        
        containerView.addSubview(firstView)
        containerView.addSubview(secondView)
        containerView.addSubview(thirdView)
        containerView.addSubview(fourthView)
        
        containerView.layer.borderColor = UIColor.red.cgColor
        containerView.layer.borderWidth = 3.0
        
        return containerView
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()



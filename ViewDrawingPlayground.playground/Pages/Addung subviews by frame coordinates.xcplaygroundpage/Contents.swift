//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

// Example for adding views to composite view

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        view.addSubview(addOneView())
        let newTwoViews = twoViews()
        view.addSubview(newTwoViews[0])
        view.addSubview(newTwoViews[1])
        self.view = view
    }
    
    
    func addOneView() -> UIView {
        let newViewFrame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let newView = UIView(frame: newViewFrame)
        newView.backgroundColor = .blue
        
        return newView
    }
    
    func twoViews() -> [UIView] {
        let firstViewFrame = CGRect(x: 0, y: 20, width: 20, height: 20)
        let newFirstView = UIView(frame: firstViewFrame)
        newFirstView.backgroundColor = .black
        
        let secondViewFrame = CGRect(x: 20, y: 20, width: 20, height: 20)
        
        let newSecondView = UIView(frame: secondViewFrame)
        newSecondView.backgroundColor = .yellow
        
        return [newFirstView, newSecondView]
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

//
//  ViewController.swift
//  AC3.2-Programmatic-Autolayout
//
//  Created by Louis Tur on 12/12/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var tealView: UIView!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    question4()
    
    }
    
    internal func textFields() {
        greenView.isHidden = true
        pinkView.isHidden = true
        blueView.isHidden = true
        tealView.isHidden = true
        
        label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0).isActive = true
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 40.0).isActive = true

        label2.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 8.0).isActive = true
        
        textField1.lastBaselineAnchor.constraint(equalTo: label1.lastBaselineAnchor).isActive = true
        textField1.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8.0).isActive = true
        textField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0).isActive = true
        textField1.topAnchor.constraint(equalTo: label1.topAnchor).isActive = true
        
        textField2.lastBaselineAnchor.constraint(equalTo: label2.lastBaselineAnchor).isActive = true
        textField2.leadingAnchor.constraint(equalTo: label2.trailingAnchor, constant: 8.0).isActive = true
        textField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0).isActive = true
        textField2.topAnchor.constraint(equalTo: label2.topAnchor).isActive = true
        
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField2.translatesAutoresizingMaskIntoConstraints = false
        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false

        
        
    }
    
    
    internal func question4() {
        greenView.widthAnchor.constraint(equalToConstant: 90.0).isActive = true
        greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        pinkView.widthAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        pinkView.heightAnchor.constraint(equalTo: pinkView.widthAnchor).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor).isActive = true
        pinkView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor).isActive = true
        
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 2.0).isActive = true
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        tealView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 2.0).isActive = true
        tealView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        tealView.topAnchor.constraint(equalTo: greenView.bottomAnchor).isActive = true
        tealView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        tealView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    internal func nestedSquares() {
        tealView.isHidden = true
        pinkView.isHidden = true
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 0.5).isActive = true
        blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        

        blueView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        view.bringSubview(toFront: blueView)
    }
    
    internal func fourViewsEqualWidthDiffHeight() {
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        tealView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        tealView.heightAnchor.constraint(equalTo: tealView.widthAnchor).isActive = true
        tealView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tealView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        pinkView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        pinkView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pinkView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        tealView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    internal func twoSquaresEqualWidth() {
        blueView.isHidden = true
        greenView.isHidden = true
        
        pinkView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pinkView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pinkView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        pinkView.heightAnchor.constraint(equalTo: pinkView.widthAnchor).isActive = true
        
        tealView.topAnchor.constraint(equalTo: pinkView.bottomAnchor, constant: 8.0).isActive = true
        tealView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        tealView.heightAnchor.constraint(equalTo: tealView.widthAnchor).isActive = true
        tealView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        tealView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    internal func usingNSLayoutAnchors() {
        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        
        pinkView.bottomAnchor.constraint(equalTo: blueView.topAnchor, constant: -8.0).isActive = true
        pinkView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        pinkView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
        pinkView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor).isActive = true
        
        greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 8.0).isActive = true
        greenView.centerXAnchor.constraint(equalTo: blueView.centerXAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false

    }
    
    internal func threeVerticleViews() {
        let views: [String: UIView] = [
            "view" : self.view,
            "blue" : blueView,
            "pink" : pinkView,
            "green" : greenView]
        
        let metrics: [String: Any] = [
            "viewWidth" : 50.0,
            "viewHeight" : 100.0
        ]
        let blueHConstraints = "H:|-[blue(viewWidth)]"
        let pinkHConstraints = "H:|-[pink(viewWidth)]"
        let greenHConstraints = "H:|-[green(viewWidth)]"
        
        let verticleConstraints = "V:|-(8.0)-[blue(viewHeight)]-[pink(viewHeight)]-[green(viewHeight)]"
        
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        let verts = NSLayoutConstraint.constraints(withVisualFormat: verticleConstraints, options: [], metrics: metrics, views: views)
        let blueH = NSLayoutConstraint.constraints(withVisualFormat: blueHConstraints, options: [], metrics: metrics, views: views)
        let pinkH = NSLayoutConstraint.constraints(withVisualFormat: pinkHConstraints, options: [], metrics: metrics, views: views)
        let greenH = NSLayoutConstraint.constraints(withVisualFormat: greenHConstraints, options: [], metrics: metrics, views: views)
        
        NSLayoutConstraint.activate(verts)
        NSLayoutConstraint.activate(blueH)
        NSLayoutConstraint.activate(pinkH)
        NSLayoutConstraint.activate(greenH)
    }
    
    internal func cornerContstraintsVisualFormatLanguage() {
        // V = vertical axis
        // H = horizontal axis
        // (value) tells you the "constant" of the constraint
        // | is shorthand for superview
        
        // these will break because the super view is > 50.0pts
        // but the view1 is defined as only having 50pt height
        // so it cannot be both pinned to the top and bottom edge of
        // a view that is >50.0 in heigh AND also be 50pts
//        let constraint = "V:|[view1(50.0)]|"
//        let constraint2 = "H:|[view1(100.0)]|"
        
        // - is a connection of 8pt
        // V -> Top-to-bottom
        // H -> Left-to-Right
        // pins to top left corner
//        let constraint3 = "V:|[view1(50.0)]"
//        let constraint4 = "H:|[view1(100.0)]"
        
        // pins to bottom right corner
//        let constraint5 = "V:[view1(50.0)]|"
//        let constraint6 = "H:[view1(100.0)]|"
        
        // pins to top right corner
//        let constraint7 = "V:|[view1(50.0)]"
//        let constraint8 = "H:[view1(100.0)]|"
        
        // pins to bottom left corner
        let constraint9 = "V:[view1(50.0)]|"
        let constraint10 = "H:|[view1(100.0)]"
        
        let viewDictionary: [String: UIView] = [ "superView" : self.view, "view1" : blueView]
        
        let constraintsV = NSLayoutConstraint.constraints(withVisualFormat: constraint9, options: [], metrics: nil, views: viewDictionary)
        let constraintsH = NSLayoutConstraint.constraints(withVisualFormat: constraint10, options: [], metrics: nil, views: viewDictionary)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(constraintsH)
        NSLayoutConstraint.activate(constraintsV)
    }
    
    internal func centerViewsWithVisualFormatLanguage() {
        let blueWidth = "H:[view]-(<=1.0)-[blue(200.0)]"
        let blueHeight = "V:[view]-(<=1.0)-[blue(200.0)]"
        let views = ["blue": blueView!,
                     "view": self.view!]
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        let blueWidthConstraints = NSLayoutConstraint.constraints(withVisualFormat: blueWidth, options: .alignAllCenterY, metrics: nil, views: views)
        let blueHeightConstraints = NSLayoutConstraint.constraints(withVisualFormat: blueHeight, options: .alignAllCenterX, metrics: nil, views: views)
        NSLayoutConstraint.activate(blueHeightConstraints)
        NSLayoutConstraint.activate(blueWidthConstraints)

    }
    
    internal func centerViewWithNSLayoutContraint() {
        let blueWidthConstraint = NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        let blueHeightConstraint = NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        let blueCenterXConstraint = NSLayoutConstraint(item: blueView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let blueCenterYConstraint = NSLayoutConstraint(item: blueView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraints([blueCenterYConstraint, blueCenterXConstraint])
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.blueView.addConstraints([blueWidthConstraint, blueHeightConstraint])
    }

  
}


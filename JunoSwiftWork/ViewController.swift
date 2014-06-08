/*
* JunoSwiftWork
*
* Copyright (C) 2014 Decsers, dimplejuno@decsers.com
*
*/


import Foundation
import UIKit

class ViewController: UIViewController {
    
     var segmentControl: UISegmentedControl?
    
    func segmentAction(sender: UISegmentedControl)
    {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.applicationGreenColor()
        case 1:
            self.view.backgroundColor = UIColor.applicationBlueColor()
        case 2:
            self.view.backgroundColor = UIColor.applicationPurpleColor()
            
        default:
            self.view.backgroundColor = UIColor.applicationBlueColor()
        
        }
        
    }

    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.applicationBlueColor()
        
        
        
        segmentControl = UISegmentedControl(items:["Green", "Blue", "Purple"])
        segmentControl!.segmentedControlStyle = UISegmentedControlStyle.Bar
        segmentControl!.momentary = true
        
        segmentControl!.addTarget(self, action: "segmentAction:", forControlEvents:UIControlEvents.ValueChanged)
        
        self.navigationItem.titleView = segmentControl
        

    }
    
}

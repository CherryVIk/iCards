//
//  ProfileView.swift
//  iCards
//
//  Created by Victoria Boichenko on 08.08.2020.
//  Copyright © 2020 Victoria Boichenko. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    var label: UILabel = UILabel()
       var myNames = ["dipen","laxu","anis","aakash","santosh","raaa","ggdds","house"]

       override init(){
           super.init()
       }

       override init(frame: CGRect) {
           super.init(frame: frame)
           self.addCustomView()
       }

       required init(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

       func addCustomView() {
           label.frame = CGRectMake(50, 10, 200, 100)
           label.backgroundColor=UIColor.whiteColor()
           label.textAlignment = NSTextAlignment.Center
           label.text = "test label"
           label.hidden=true
           self.addSubview(label)

           var btn: UIButton = UIButton()
           btn.frame=CGRectMake(50, 120, 200, 100)
           btn.backgroundColor=UIColor.redColor()
           btn.setTitle("button", forState: UIControlState.Normal)
           btn.addTarget(self, action: "changeLabel", forControlEvents: UIControlEvents.TouchUpInside)
           self.addSubview(btn)

           var txtField : UITextField = UITextField()
           txtField.frame = CGRectMake(50, 250, 100,50)
           txtField.backgroundColor = UIColor.grayColor()
           self.addSubview(txtField)
    }

}

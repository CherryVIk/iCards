//
//  ProfileView.swift
//  iCards
//
//  Created by Victoria Boichenko on 08.08.2020.
//  Copyright © 2020 Victoria Boichenko. All rights reserved.
//

import UIKit
import PureLayout

class ProfileView: UIView {
    var shouldSetupConstraints = true
    
    //    var backgroundView : UIImageView
    
    var bannerView: UIImageView!
    var profileView: UIImageView!
    var nameLabel : UILabel!
    var informationLabel : UILabel!
    
    let screenSize = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        bannerView = UIImageView(frame: CGRect.zero)
        bannerView.backgroundColor = #colorLiteral(red: 0, green: 0.3918271661, blue: 0.2162064612, alpha: 1)
        
        bannerView.autoSetDimension(.height, toSize: screenSize.width)
        
        self.addSubview(bannerView)
        
        profileView = UIImageView(frame: CGRect.zero)
        profileView.backgroundColor = UIColor.gray
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 1.0
        profileView.layer.cornerRadius = 5.0
        
        profileView.autoSetDimension(.width, toSize: 150.0)
        profileView.autoSetDimension(.height, toSize: 150.0)
        
        self.addSubview(profileView)
        
        nameLabel = UILabel(frame: CGRect.zero)
        nameLabel.textAlignment = .center
        nameLabel.text = "Victoria"
        nameLabel.font = UIFont(name: "Lobster-Regular.ttf", size: 30)
        
        self.addSubview(nameLabel)
        
        informationLabel = UILabel(frame: CGRect.zero)
        informationLabel.textAlignment = .center
        informationLabel.text = "Software Developer"
        informationLabel.font = UIFont(name: "EBGaramond-VariableFont_wght.ttf", size: 30)
        
        self.addSubview(informationLabel)
        //    segmentedControl = UISegmentedControl(items: ["Tweets", "Media", "Likes"])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func updateConstraints() {
        if(shouldSetupConstraints) {
            
            let edgesInset: CGFloat = 10.0
            let centerOffset: CGFloat = 62.0
            
            bannerView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
            
            profileView.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            profileView.autoPinEdge(.bottom, to: .bottom, of: bannerView, withOffset: centerOffset)
            
            //        segmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgesInset)
            //        segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            //        segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: edgesInset)
            //
            shouldSetupConstraints = false
        }
        
        super.updateConstraints()
    }
    
}

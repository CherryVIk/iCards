//
//  ProfileViewController.swift
//  iCards
//
//  Created by Victoria Boichenko on 08.08.2020.
//  Copyright © 2020 Victoria Boichenko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profile : ProfileView!

    override func viewDidLoad() {
        super.viewDidLoad()
        profile = ProfileView(frame: CGRect.zero)
               self.view.addSubview(profile)
               
               // AutoLayout
               profile.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
               
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

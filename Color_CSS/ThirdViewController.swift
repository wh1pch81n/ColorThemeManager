//
//  ThirdViewController.swift
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

enum adsf: String {
	case aaaa
	case bbbb
}

class ThirdViewController: UIViewController {
	
	override func loadView() {
		super.loadView()
		DH_StyleKitManager.style = CloudStyleKit()
		
		view.backgroundColor = DH_StyleKitManager.color(styleKey: DHColorKey._Theme)
		view.layer.borderWidth = 10
		view.layer.borderColor = DHColorKey._Red.color.cgColor
	}
	
}

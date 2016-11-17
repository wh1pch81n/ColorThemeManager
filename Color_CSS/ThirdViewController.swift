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
		//DH_StyleKitManager.style = CloudStyleKit()
		
		//view.backgroundColor = DH_StyleKitManager.style.color.red
		//view.layer.borderWidth = 10
		//view.layer.borderColor = DH_StyleKitManager.style.color.green.cgColor
	}
	
}

class FirstViewController1: UIViewController {
	@IBOutlet weak var firstView: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		DH_StyleKitManager.style = CloudStyleKit()
		
		firstView.textColor = DH_StyleKitManager.style.color_red;
		view.backgroundColor = DH_StyleKitManager.style.color_green;
		firstView.font = DH_StyleKitManager.style.font_h1;
	}
}

class SecondViewController2: UIViewController {
	@IBOutlet weak var secondView: UILabel!
	@IBOutlet weak var secondviewSubtitle: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		DH_StyleKitManager.style = AerisStyleKit()
		
		secondView.textColor = DH_StyleKitManager.style.color_red;
		
		view.backgroundColor = DH_StyleKitManager.style.color_green;
		secondView.font = DH_StyleKitManager.style.font_h1;
		secondviewSubtitle.font = DH_StyleKitManager.style.font_body;
	}
}

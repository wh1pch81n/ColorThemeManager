//
//  NSObject_COLOR_CSS.swift
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

// MARK: - StyleManager

final class DH_StyleKitManager: NSObject {
	
	public static var style: ColorKitProtocol & FontKitProtocol  = DefaultStyleKit()

}

// MARK: - Color kit protocol

public protocol ColorKitProtocol {
	var color_red: UIColor { get }
	var color_green: UIColor { get }
	var color_blue: UIColor { get }
}

extension ColorKitProtocol {
	public var color_red: UIColor { return .red }
	public var color_green: UIColor { return .green }
	public var color_blue: UIColor { return .blue }
}

// MARK: - Font Kit Protocol

public protocol FontKitProtocol {
	var font_h1: UIFont { get }
	var font_body: UIFont { get }
}

extension FontKitProtocol {
	public var font_h1: UIFont { return UIFont(name: "Arial", size: 17)! }
	public var font_body: UIFont { return UIFont(name: "Arial", size: 14)! }
}


public class DefaultStyleKit: NSObject, ColorKitProtocol, FontKitProtocol {
	// colors
	public var color_red: UIColor { return .red }
	public var color_green: UIColor { return .green }
	public var color_blue: UIColor { return .blue }
	// fonts
	public var font_h1: UIFont { return UIFont(name: "Arial", size: 17)! }
	public var font_body: UIFont { return UIFont(name: "Arial", size: 14)! }
}

public struct AerisStyleKit: ColorKitProtocol, FontKitProtocol {
	// colors
	public var color_red: UIColor = #colorLiteral(red: 1, green: 0.3179958648, blue: 0.388072145, alpha: 1)
	
	// fonts
	public var font_h1: UIFont { return UIFont(name: "Baskerville-Italic", size: 17)! }
	public var font_body: UIFont { return UIFont(name: "Baskerville-Italic", size: 14)! }
}


public struct CloudStyleKit: ColorKitProtocol, FontKitProtocol {
	// colors
	public var color_red: UIColor = #colorLiteral(red: 0.5237410946, green: 0.005209560587, blue: 0, alpha: 1)
	
	// fonts
	public var font_h1: UIFont { return UIFont(name: "MarkerFelt-Wide", size: 17)! }
	public var font_body: UIFont { return UIFont(name: "MarkerFelt-Wide", size: 14)! }
}



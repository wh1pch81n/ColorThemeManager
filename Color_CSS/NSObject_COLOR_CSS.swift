//
//  NSObject_COLOR_CSS.swift
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

final class DH_StyleKitManager: NSObject {
	
	public static var style: StyleKitProtocol = DefaultStyleKit()
	
	public static func color(styleKey: DHColorKey) -> UIColor? {
		return style.color(styleKey: styleKey)
	}
}

@objc public protocol ColorKitProtocol: class {
	func color(styleKey: DHColorKey) -> UIColor?
}
@objc public protocol FontKitProtocol: class {
	func font(styleKey: DHFontKey) -> UIFont?
}

@objc public protocol StyleKitProtocol: class, ColorKitProtocol {
}

public class DefaultStyleKit: NSObject, StyleKitProtocol {
	public func color(styleKey: DHColorKey) -> UIColor? {
		return nil
	}
}

public class AerisStyleKit: NSObject, StyleKitProtocol {
	public func color(styleKey: DHColorKey) -> UIColor? {
		switch styleKey {
		case DHColorKey._Theme: return #colorLiteral(red: 1, green: 0.3179958648, blue: 0.388072145, alpha: 1)
		
		default:
			return nil
		}
	}
}

public class CloudStyleKit: NSObject, StyleKitProtocol {
	public func color(styleKey: DHColorKey) -> UIColor? {
		switch styleKey {
		case DHColorKey._Theme: return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
		case DHColorKey._DarkRed: return #colorLiteral(red: 0.5237410946, green: 0.005209560587, blue: 0, alpha: 1)
		case DHColorKey._Red: return #colorLiteral(red: 1, green: 0.009946824187, blue: 0, alpha: 1)
		case DHColorKey._LightRed: return #colorLiteral(red: 1, green: 0.4909467775, blue: 0.5636061062, alpha: 1)
		default:
			return nil
		}
	}
}

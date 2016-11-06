//
//  NSObject_COLOR_CSS.swift
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

final class DH_StyleKitManager: NSObject {
	
	public static var style = StyleKit()

}

@objc public protocol ColorKitProtocol: class {
	var red: UIColor { get }
	var green: UIColor { get }
	var blue: UIColor { get }
}

@objc public protocol FontKitProtocol: class {
	var h1: UIFont { get }
	var body: UIFont { get }
}

// "Base class"
public class StyleKit: NSObject {
	public private(set) var color: ColorKitProtocol = DefaultColorKit()
	public private(set) var font: FontKitProtocol = DefaultFontKit()
}

// "Subclasses

public class AerisStyleKit: StyleKit {
	override init() {
		super.init()
		setValue(AerisColorKit(), forKey: #keyPath(StyleKit.color))
		setValue(AerisFontKit(), forKey: #keyPath(StyleKit.font))
	}
}

public class CloudStyleKit: StyleKit {
	override init() {
		super.init()
		setValue(CloudColorKit(), forKey: #keyPath(StyleKit.color))
		setValue(CloudFontKit(), forKey: #keyPath(StyleKit.font))
	}
}

// color
public class DefaultColorKit: NSObject, ColorKitProtocol {
	public var red: UIColor { return .red }
	public var green: UIColor { return .green }
	public var blue: UIColor { return .blue }
}
public class AerisColorKit: NSObject, ColorKitProtocol {
	public var red: UIColor { return #colorLiteral(red: 1, green: 0.3179958648, blue: 0.388072145, alpha: 1) }
	public var green: UIColor { return .green }
	public var blue: UIColor { return .blue }
}
public class CloudColorKit: NSObject, ColorKitProtocol {
	public var red: UIColor { return #colorLiteral(red: 0.5237410946, green: 0.005209560587, blue: 0, alpha: 1) }
	public var green: UIColor { return .green }
	public var blue: UIColor { return .blue }
}
// Font
public class DefaultFontKit: NSObject, FontKitProtocol {
	public var h1: UIFont { return UIFont(name: "Arial", size: 17)! }
	public var body: UIFont { return UIFont(name: "Arial", size: 14)! }
}

public class AerisFontKit: NSObject, FontKitProtocol {
	public var h1: UIFont { return UIFont(name: "Baskerville-Italic", size: 17)! }
	public var body: UIFont { return UIFont(name: "Baskerville-Italic", size: 14)! }
}

public class CloudFontKit: NSObject, FontKitProtocol {
	public var h1: UIFont { return UIFont(name: "MarkerFelt-Wide", size: 17)! }
	public var body: UIFont { return UIFont(name: "MarkerFelt-Wide", size: 14)! }
}

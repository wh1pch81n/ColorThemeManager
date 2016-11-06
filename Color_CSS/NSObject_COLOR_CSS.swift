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
	
	//public static func color(key: ColorStyleKitProtocol) -> UIColor {
	//	return style.key.color
	//}
}

public class ColorBox: NSObject {
	public let color: UIColor
	init(_ rawValue: UIColor) {
		color = rawValue
	}
}

public class FontBox: NSObject {
	public let font: UIFont
	init(name: String, size: CGFloat) {
		font = UIFont(name: name, size: size)!
	}
}

public class _ColorStyleKitProtocol: NSObject {
	public var red: ColorBox { return ColorBox(.red) }
	public var green: ColorBox { return ColorBox(.green) }
	public var blue: ColorBox { return ColorBox(.blue) }
}

public class _FontStyleKitProtocol: _ColorStyleKitProtocol {
	public var h1: FontBox { return FontBox(name: "Arial", size: 17) }
	public var body: FontBox { return FontBox(name: "Arial", size: 14) }
}

// "Base class"
public class StyleKit: _FontStyleKitProtocol {}

// "Subclasses

public class AerisStyleKit: StyleKit {
	public override var red: ColorBox { return ColorBox(#colorLiteral(red: 1, green: 0.3179958648, blue: 0.388072145, alpha: 1)) }
	public override var h1: FontBox { return FontBox(name: "Baskerville-Italic", size: 17) }
}

public class CloudStyleKit: StyleKit {
	public override var red: ColorBox { return ColorBox(#colorLiteral(red: 0.5237410946, green: 0.005209560587, blue: 0, alpha: 1)) }
	public override var h1: FontBox { return FontBox(name: "MarkerFelt-Wide", size: 17) }

}

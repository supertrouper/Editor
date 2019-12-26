//
//  KernThemeAttribute.swift
//  
//
//  Created by Matthew Davidson on 26/12/19.
//

import Foundation
import EditorCore

public class KernThemeAttribute: TokenThemeAttribute {
    
    public let key = "kern"
    public let kern: Float
    
    public init(kern: Float = 0) {
        self.kern = kern
    }
    
    public func apply(to attrStr: NSMutableAttributedString, withRange range: NSRange, inSelectionScope: Bool) {
        attrStr.addAttribute(.kern, value: kern, range: range)
    }
}

//
//  ColorTransformer.swift
//  CoreDataNotesExample
//
//  Created by Hasan Basri Komser on 8.12.2022.
//

import UIKit

class ColorTransformer: NSSecureUnarchiveFromDataTransformer {
    
    override static var allowedTopLevelClasses: [AnyClass] {
            [UIColor.self]
        }

        static func register() {
            let className = String(describing: ColorTransformer.self)
            let name = NSValueTransformerName(className)

            let transformer = ColorTransformer()
            ValueTransformer.setValueTransformer(
                transformer, forName: name)
        }
}

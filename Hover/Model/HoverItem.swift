//
//  HoverItem.swift
//  Hover
//
//  Created by Pedro Carrasco on 13/07/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - HoverItem
public struct HoverItem {
    
    // MARK: Properties
    let title: String?
    var image:UIImage
    public var imagec: UIImage{
        get{
            return image
        }
        set{
            image = newValue
        }
    }
    let onTap: () -> ()
    
    // MARK: Lifecycle
    public init(title: String? = nil, image: UIImage, onTap: @escaping () -> ()) {
        self.title = title
        self.image = image
        self.onTap = onTap
    }
}

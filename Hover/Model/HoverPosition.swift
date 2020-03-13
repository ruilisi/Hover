//
//  HoverPosition.swift
//  Hover
//
//  Created by Pedro Carrasco on 12/07/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - HoverPosition
public enum HoverPosition {
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
}

// MARK: - Properties
extension HoverPosition {
    
    var xOrientation: Orientation.X {
        switch self {
        case .topLeft, .bottomLeft:
            return .leftToRight
        case .topRight, .bottomRight:
            return .rightToLeft
        }
    }
    
    var yOrientation: Orientation.Y {
        switch self {
        case .bottomLeft, .bottomRight:
            return .bottomToTop
        case .topLeft, .topRight:
            return .topToBottom
        }
    }
}

// MARK: - Configuration
extension HoverPosition {

    func configurePosition(of guide: UILayoutGuide, inside view: UIView, with spacing: CGFloat) {
        let positionConstraints: [NSLayoutConstraint]
        switch self {
        case .topLeft:
            if #available(iOS 11.0, *) {
                positionConstraints = [
                    guide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: spacing),
                    guide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: spacing)
                ]
            } else {
                positionConstraints = [
                    guide.topAnchor.constraint(equalTo: view.topAnchor, constant: spacing),
                    guide.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: spacing)
                ]
            }
        case .topRight:
            if #available(iOS 11.0, *) {
                positionConstraints = [
                    guide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: spacing),
                    guide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -spacing)
                ]
            } else {
                positionConstraints = [
                    guide.topAnchor.constraint(equalTo: view.topAnchor, constant: spacing),
                    guide.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -spacing)
                ]            }
        case .bottomLeft:
            if #available(iOS 11.0, *) {
                positionConstraints = [
                    guide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -spacing),
                    guide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: spacing)
                ]
            } else {
                positionConstraints = [
                    guide.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -spacing),
                    guide.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: spacing)
                ]
            }
        case .bottomRight:
            if #available(iOS 11.0, *) {
                positionConstraints = [
                    guide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -spacing),
                    guide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -spacing)
                ]
            } else {
                positionConstraints = [
                    guide.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -spacing),
                    guide.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -spacing)
                ]
            }
        }
        NSLayoutConstraint.activate(positionConstraints)
    }
}

// MARK: - Sugar
public extension Set where Element == HoverPosition {

    static let all: Set<HoverPosition> = [.topLeft, .topRight, .bottomLeft, .bottomRight]
}

// MARK: - CaseIterable
extension HoverPosition: CaseIterable {}

// MARK: - Equatable
extension HoverPosition: Equatable {}

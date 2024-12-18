//
//  Color.swift
//
//  Copyright © 2023 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import SwiftUI

public let bundle = Bundle.module

public enum DesignSystemColor: String {
    case panel
    case background
    case backgroundSheets
    case surface
    case container
    case textLink
    case textPrimary
    case textSecondary
    case textSelectionFill
    case lines
    case accent
    case icons
    case iconsSecondary
    case alertGreen
    case alertYellow
    case buttonsSecondaryFillDefault
    case buttonsSecondaryFillPressed
}

public extension Color {
    init(designSystemColor: DesignSystemColor) {
        self.init(designSystemColor.rawValue, bundle: bundle)
    }
}

#if canImport(UIKit)

import UIKit

public extension UIColor {
    convenience init(designSystemColor: DesignSystemColor) {
        self.init(named: designSystemColor.rawValue, in: bundle, compatibleWith: nil)!
    }
}

#endif

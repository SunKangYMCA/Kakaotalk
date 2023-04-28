//
//  Font.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

extension Font {
    enum SKFontType {
        case tiny, small, normal, large, huge
        case tinyBold, smallBold, normalBold, largeBold, hugeBold
        case tinyHeavy, smallHeavy, normalHeavy, largeHeavy, hugeHeavy
        
        var size: CGFloat {
            switch self {
            case .tiny, .tinyBold, .tinyHeavy:
                return 12
            case .small, .smallBold, .smallHeavy:
                return 18
            case .normal, .normalBold, .normalHeavy:
                return 24
            case .large, .largeBold, .largeHeavy:
                return 32
            case .huge, .hugeBold, .hugeHeavy:
                return 48
            }
        }
        
        var weight: Weight {
            switch self {
            case .tiny, .small, .normal, .large, .huge:
                return .regular
            case .tinyBold, .smallBold, .normalBold, .largeBold, .hugeBold:
                return .bold
            case .tinyHeavy, .smallHeavy, .normalHeavy, .largeHeavy, .hugeHeavy:
                return .heavy
                
            }
        }      
    }
    
    static func skFont(type: SKFontType = .normal) -> Font {
        .system(size: type.size, weight: type.weight)
    }
        
}

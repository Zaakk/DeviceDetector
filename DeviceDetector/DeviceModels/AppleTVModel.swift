//
//  AppleTVModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 05/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

public enum AppleTVModel: AppleDeviceProtocol
{
    case Model2, Model3, Model4, Model4K
    
    public var rawValue: UInt
    {
        switch self {
        case .Model2:
            return 0
        case .Model3:
            return 1
        case .Model4:
            return 2
        case .Model4K:
            return 3
        }
    }
}

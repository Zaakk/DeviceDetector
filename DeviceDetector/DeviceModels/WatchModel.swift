//
//  WatchModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 05/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

public enum WatchModel: AppleDeviceProtocol
{
    case Original(size: WatchSize)
    case ModelSeries1(size: WatchSize)
    case ModelSeries2(size: WatchSize)
    case ModelSeries3(size: WatchSize)
    case ModelSeries4(size: WatchSize)
    
    public var rawValue: UInt
    {
        switch self {
        case .Original(_):
            return 0
        case .ModelSeries1(_):
            return 1
        case .ModelSeries2(_):
            return 2
        case .ModelSeries3(_):
            return 3
        case .ModelSeries4(_):
            return 4
        }
    }
}

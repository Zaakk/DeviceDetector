//
//  WatchModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 05/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum WatchModel: AppleDeviceProtocol {
    case Original(size: WatchSize)
    case ModelSeries1(size: WatchSize)
    case ModelSeries2(size: WatchSize)
    case ModelSeries3(size: WatchSize)
    case ModelSeries4(size: WatchSize)
}

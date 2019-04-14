//
//  AppleDeviceModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 14/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum AppleDeviceModel: AppleDeviceProtocol
{
    case Simulator
    
    var rawValue: UInt
    {
        return 0
    }
}

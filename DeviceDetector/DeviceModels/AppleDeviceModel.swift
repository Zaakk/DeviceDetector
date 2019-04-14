//
//  AppleDeviceModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 14/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

public enum AppleDeviceModel: AppleDeviceProtocol
{
    case Simulator
    
    public var rawValue: UInt
    {
        return 0
    }
}

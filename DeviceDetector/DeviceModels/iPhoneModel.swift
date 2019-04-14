//
//  iPhoneModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 04/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum iPhoneModel: AppleDeviceProtocol
{
    case Original(cellularType: CellularType)
    case Model3G(cellularType: CellularType)
    case Model3GS(cellularType: CellularType)
    case Model4(cellularType: CellularType)
    case Model4S(cellularType: CellularType)
    case Model5(cellularType: CellularType)
    case Model5C(cellularType: CellularType)
    case Model5S(cellularType: CellularType)
    case Model6(cellularType: CellularType)
    case Model6Plus(cellularType: CellularType)
    case Model6S(cellularType: CellularType)
    case Model6SPlus(cellularType: CellularType)
    case ModelSE(cellularType: CellularType)
    case Model7(cellularType: CellularType)
    case Model7Plus(cellularType: CellularType)
    case Model8(cellularType: CellularType)
    case Model8Plus(cellularType: CellularType)
    case ModelX(cellularType: CellularType)
    case ModelXR(cellularType: CellularType)
    case ModelXS(cellularType: CellularType)
    case ModelXSMax(cellularType: CellularType)
    
    var rawValue: UInt
    {
        switch self {
        case .Original(_):
            return 0
        case .Model3G(_):
            return 1
        case .Model3GS(_):
            return 2
        case .Model4(_):
            return 3
        case .Model4S(_):
            return 4
        case .Model5(_):
            return 5
        case .Model5C(_):
            return 6
        case .Model5S(_):
            return 7
        case .Model6(_):
            return 8
        case .Model6Plus(_):
            return 9
        case .Model6S(_):
            return 10
        case .Model6SPlus(_):
            return 11
        case .ModelSE(_):
            return 12
        case .Model7(_):
            return 13
        case .Model7Plus(_):
            return 14
        case .Model8(_):
            return 15
        case .Model8Plus(_):
            return 16
        case .ModelX(_):
            return 17
        case .ModelXR(_):
            return 18
        case .ModelXS(_):
            return 19
        case .ModelXSMax(_):
            return 20
        }
    }
}

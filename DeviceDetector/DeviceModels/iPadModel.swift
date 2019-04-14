//
//  iPadModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 04/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum iPadModel: AppleDeviceProtocol
{
    case Original(cellularType: CellularType)
    case Model2(cellularType: CellularType)
    case Model3(cellularType: CellularType)
    case Model4(cellularType: CellularType)
    case ModelAir(cellularType: CellularType)
    case ModelAir2(cellularType: CellularType)
    case ModelPro_12(cellularType: CellularType)
    case ModelPro_9(cellularType: CellularType)
    case Model5(cellularType: CellularType)
    case ModelPro2_12(cellularType: CellularType)
    case ModelPro_10(cellularType: CellularType)
    case Model6(cellularType: CellularType)
    case ModelPro_11(cellularType: CellularType)
    case ModelPro3_12(cellularType: CellularType)
    case ModelAir3(cellularType: CellularType)
    case ModelMini(cellularType: CellularType)
    case ModelMini2(cellularType: CellularType)
    case ModelMini3(cellularType: CellularType)
    case ModelMini4(cellularType: CellularType)
    case ModelMini5(cellularType: CellularType)
    
    var rawValue: UInt
    {
        switch self {
        case .Original(_):
            return 0
        case .Model2(_):
            return 1
        case .Model3(_):
            return 2
        case .Model4(_):
            return 3
        case .ModelAir(_):
            return 4
        case .ModelAir2(_):
            return 5
        case .ModelPro_12(_):
            return 6
        case .ModelPro_9(_):
            return 7
        case .Model5(_):
            return 8
        case .ModelPro2_12(_):
            return 9
        case .ModelPro_10(_):
            return 10
        case .Model6(_):
            return 11
        case .ModelPro_11(_):
            return 12
        case .ModelPro3_12(_):
            return 13
        case .ModelAir3(_):
            return 14
        case .ModelMini(_):
            return 15
        case .ModelMini2(_):
            return 16
        case .ModelMini3(_):
            return 17
        case .ModelMini4(_):
            return 18
        case .ModelMini5(_):
            return 19
        }
    }
}

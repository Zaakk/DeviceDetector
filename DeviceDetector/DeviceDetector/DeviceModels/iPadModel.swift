//
//  iPadModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 04/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum iPadModel: AppleDeviceProtocol {
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
}

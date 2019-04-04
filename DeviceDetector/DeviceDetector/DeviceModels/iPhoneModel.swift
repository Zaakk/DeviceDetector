//
//  iPhoneModel.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 04/04/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

enum iPhoneModel: AppleDeviceProtocol {
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
}

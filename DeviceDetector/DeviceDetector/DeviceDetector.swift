//
//  DeviceDetector.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 31/03/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

protocol AppleDeviceProtocol {}

enum DeviceType {
    case iPhone, iPad, iPod, AppleTV, Watch
}

enum CellularType {
    case GSM, CDMA, WiFi
}

enum WatchSize {
    case Size38, Size42
}

enum AppleDeviceModel: AppleDeviceProtocol {
    case Simulator
}

struct Device {
    let model: AppleDeviceProtocol
}

class DeviceDetector {
    private func deviceId() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    var device: Device {
        switch deviceId() {
        // MARK: Apple TV
        case "AppleTV2,1":
            return Device(model: AppleTVModel.Model2)
        case "AppleTV3,1":
            return Device(model: AppleTVModel.Model3)
        case "AppleTV3,2":
            return Device(model: AppleTVModel.Model3)
        // MARK: Apple Watch
        case "Watch1,1":
            return Device(model: WatchModel.Original(size: .Size38))
        case "Watch1,2":
            return Device(model: WatchModel.Original(size: .Size42))
        case "Watch2,6":
            return Device(model: WatchModel.ModelSeries1(size: .Size38))
        case "Watch2,7":
            return Device(model: WatchModel.ModelSeries1(size: .Size42))
        case "Watch2,3":
            return Device(model: WatchModel.ModelSeries2(size: .Size38))
        case "Watch2,4":
            return Device(model: WatchModel.ModelSeries2(size: .Size42))
        case "Watch3,1":
            return Device(model: WatchModel.ModelSeries3(size: .Size38))
        case "Watch3,2":
            return Device(model: WatchModel.ModelSeries3(size: .Size42))
        case "Watch3,3":
            return Device(model: WatchModel.ModelSeries3(size: .Size38))
        case "Watch3,4":
            return Device(model: WatchModel.ModelSeries3(size: .Size42))
        case "Watch4,1":
            return Device(model: WatchModel.ModelSeries4(size: .Size38))
        case "Watch4,2":
            return Device(model: WatchModel.ModelSeries4(size: .Size42))
        case "Watch4,3":
            return Device(model: WatchModel.ModelSeries4(size: .Size38))
        case "Watch4,4":
            return Device(model: WatchModel.ModelSeries4(size: .Size42))
        // MARK: iPad
        case "iPad1,1":
            return Device(model: iPadModel.Original(cellularType: .WiFi))
        case "iPad2,1":
            return Device(model: iPadModel.Model2(cellularType: .WiFi))
        case "iPad2,2":
            return Device(model: iPadModel.Model2(cellularType: .GSM))
        case "iPad2,3":
            return Device(model: iPadModel.Model2(cellularType: .CDMA))
        case "iPad2,4":
            return Device(model: iPadModel.Model2(cellularType: .WiFi))
        case "iPad3,1":
            return Device(model: iPadModel.Model3(cellularType: .WiFi))
        case "iPad3,2":
            return Device(model: iPadModel.Model3(cellularType: .GSM))
        case "iPad3,3":
            return Device(model: iPadModel.Model3(cellularType: .GSM))
        case "iPad3,4":
            return Device(model: iPadModel.Model4(cellularType: .WiFi))
        case "iPad3,5":
            return Device(model: iPadModel.Model4(cellularType: .GSM))
        case "iPad3,6":
            return Device(model: iPadModel.Model4(cellularType: .GSM))
        case "iPad4,1":
            return Device(model: iPadModel.ModelAir(cellularType: .WiFi))
        case "iPad4,2":
            return Device(model: iPadModel.ModelAir(cellularType: .GSM))
        case "iPad4,3":
            return Device(model: iPadModel.ModelAir(cellularType: .GSM))
        case "iPad5,3":
            return Device(model: iPadModel.ModelAir2(cellularType: .WiFi))
        case "iPad5,4":
            return Device(model: iPadModel.ModelAir2(cellularType: .GSM))
        case "iPad6,7":
            return Device(model: iPadModel.ModelPro_12(cellularType: .WiFi))
        case "iPad6,8":
            return Device(model: iPadModel.ModelPro_12(cellularType: .GSM))
        case "iPad6,3":
            return Device(model: iPadModel.ModelPro_9(cellularType: .WiFi))
        case "iPad6,4":
            return Device(model: iPadModel.ModelPro_9(cellularType: .GSM))
        case "iPad6,11":
            return Device(model: iPadModel.Model5(cellularType: .WiFi))
        case "iPad6,12":
            return Device(model: iPadModel.Model5(cellularType: .GSM))
        case "iPad7,1":
            return Device(model: iPadModel.ModelPro_12(cellularType: .WiFi))
        case "iPad7,2":
            return Device(model: iPadModel.ModelPro_12(cellularType: .GSM))
        case "iPad7,3":
            return Device(model: iPadModel.ModelPro_10(cellularType: .WiFi))
        case "iPad7,4":
            return Device(model: iPadModel.ModelPro_10(cellularType: .GSM))
        case "iPad7,5":
            return Device(model: iPadModel.Model6(cellularType: .WiFi))
        case "iPad7,6":
            return Device(model: iPadModel.Model6(cellularType: .GSM))
        case "iPad8,1":
            return Device(model: iPadModel.ModelPro_11(cellularType: .WiFi))
        case "iPad8,2":
            return Device(model: iPadModel.ModelPro_11(cellularType: .WiFi))
        case "iPad8,3":
            return Device(model: iPadModel.ModelPro_11(cellularType: .GSM))
        case "iPad8,4":
            return Device(model: iPadModel.ModelPro_11(cellularType: .GSM))
        case "iPad8,5":
            return Device(model: iPadModel.ModelPro_12(cellularType: .WiFi))
        case "iPad8,6":
            return Device(model: iPadModel.ModelPro_12(cellularType: .WiFi))
        case "iPad8,7":
            return Device(model: iPadModel.ModelPro_12(cellularType: .GSM))
        case "iPad8,8":
            return Device(model: iPadModel.ModelPro_12(cellularType: .GSM))
        case "iPad11,3":
            return Device(model: iPadModel.ModelAir3(cellularType: .WiFi))
        case "iPad11,4":
            return Device(model: iPadModel.ModelAir3(cellularType: .GSM))
        // MARK: iPad Mini
        case "iPad2,5":
            return Device(model: iPadModel.ModelMini(cellularType: .WiFi))
        case "iPad2,6":
            return Device(model: iPadModel.ModelMini(cellularType: .GSM))
        case "iPad2,7":
            return Device(model: iPadModel.ModelMini(cellularType: .GSM))
        case "iPad4,4":
            return Device(model: iPadModel.ModelMini2(cellularType: .WiFi))
        case "iPad4,5":
            return Device(model: iPadModel.ModelMini2(cellularType: .GSM))
        case "iPad4,6":
            return Device(model: iPadModel.ModelMini2(cellularType: .WiFi))
        case "iPad4,7":
            return Device(model: iPadModel.ModelMini3(cellularType: .WiFi))
        case "iPad4,8":
            return Device(model: iPadModel.ModelMini3(cellularType: .GSM))
        case "iPad4,9":
            return Device(model: iPadModel.ModelMini3(cellularType: .GSM))
        case "iPad5,1":
            return Device(model: iPadModel.ModelMini4(cellularType: .WiFi))
        case "iPad5,2":
            return Device(model: iPadModel.ModelMini4(cellularType: .GSM))
        case "iPad11,1":
            return Device(model: iPadModel.ModelMini5(cellularType: .WiFi))
        case "iPad11,2":
            return Device(model: iPadModel.ModelMini5(cellularType: .GSM))
        // MARK: iPhone
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        case "AppleTV2,1":
            return Device(model: AppleDeviceModel.Simulator)
        default:
            return Device(model: AppleDeviceModel.Simulator)
        }
    }
}

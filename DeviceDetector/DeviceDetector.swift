//
//  DeviceDetector.swift
//  DeviceDetector
//
//  Created by Alexander Zakatnov on 31/03/2019.
//  Copyright © 2019 Alexander Zakatnov. All rights reserved.
//

import Foundation

public protocol AppleDeviceProtocol
{
    var rawValue: UInt { get }
}

public extension AppleDeviceProtocol
{
    func `is`(_ device: AppleDeviceProtocol) -> Bool
    {
        return true
    }
    
    func younger(_ device: AppleDeviceProtocol) -> Bool
    {
        return self.rawValue > device.rawValue
    }
    
    func older(_ device: AppleDeviceProtocol) -> Bool
    {
        return self.rawValue < device.rawValue
    }
    
    func youngerOrEqual(_ device: AppleDeviceProtocol) -> Bool
    {
        return self.rawValue >= device.rawValue
    }
    
    func olderOrEqual(_ device: AppleDeviceProtocol) -> Bool
    {
        return self.rawValue <= device.rawValue
    }
}

public enum DeviceType
{
    case iPhone, iPad, iPod, AppleTV, Watch
}

public enum CellularType
{
    case GSM, CDMA, WiFi
}

public enum WatchSize
{
    case Size38, Size42
}

public final class DeviceDetector
{
    private static func deviceId() -> String
    {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else
            {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    public static var device: AppleDeviceProtocol
    {
        switch deviceId() {
        // MARK: Apple TV
        case "AppleTV2,1":
            return AppleTVModel.Model2
        case "AppleTV3,1":
            return AppleTVModel.Model3
        case "AppleTV3,2":
            return AppleTVModel.Model3
        // MARK: Apple Watch
        case "Watch1,1":
            return WatchModel.Original(size: .Size38)
        case "Watch1,2":
            return WatchModel.Original(size: .Size42)
        case "Watch2,6":
            return WatchModel.ModelSeries1(size: .Size38)
        case "Watch2,7":
            return WatchModel.ModelSeries1(size: .Size42)
        case "Watch2,3":
            return WatchModel.ModelSeries2(size: .Size38)
        case "Watch2,4":
            return WatchModel.ModelSeries2(size: .Size42)
        case "Watch3,1":
            return WatchModel.ModelSeries3(size: .Size38)
        case "Watch3,2":
            return WatchModel.ModelSeries3(size: .Size42)
        case "Watch3,3":
            return WatchModel.ModelSeries3(size: .Size38)
        case "Watch3,4":
            return WatchModel.ModelSeries3(size: .Size42)
        case "Watch4,1":
            return WatchModel.ModelSeries4(size: .Size38)
        case "Watch4,2":
            return WatchModel.ModelSeries4(size: .Size42)
        case "Watch4,3":
            return WatchModel.ModelSeries4(size: .Size38)
        case "Watch4,4":
            return WatchModel.ModelSeries4(size: .Size42)
        // MARK: iPad
        case "iPad1,1":
            return iPadModel.Original(cellularType: .WiFi)
        case "iPad2,1":
            return iPadModel.Model2(cellularType: .WiFi)
        case "iPad2,2":
            return iPadModel.Model2(cellularType: .GSM)
        case "iPad2,3":
            return iPadModel.Model2(cellularType: .CDMA)
        case "iPad2,4":
            return iPadModel.Model2(cellularType: .WiFi)
        case "iPad3,1":
            return iPadModel.Model3(cellularType: .WiFi)
        case "iPad3,2":
            return iPadModel.Model3(cellularType: .GSM)
        case "iPad3,3":
            return iPadModel.Model3(cellularType: .GSM)
        case "iPad3,4":
            return iPadModel.Model4(cellularType: .WiFi)
        case "iPad3,5":
            return iPadModel.Model4(cellularType: .GSM)
        case "iPad3,6":
            return iPadModel.Model4(cellularType: .GSM)
        case "iPad4,1":
            return iPadModel.ModelAir(cellularType: .WiFi)
        case "iPad4,2":
            return iPadModel.ModelAir(cellularType: .GSM)
        case "iPad4,3":
            return iPadModel.ModelAir(cellularType: .GSM)
        case "iPad5,3":
            return iPadModel.ModelAir2(cellularType: .WiFi)
        case "iPad5,4":
            return iPadModel.ModelAir2(cellularType: .GSM)
        case "iPad6,7":
            return iPadModel.ModelPro_12(cellularType: .WiFi)
        case "iPad6,8":
            return iPadModel.ModelPro_12(cellularType: .GSM)
        case "iPad6,3":
            return iPadModel.ModelPro_9(cellularType: .WiFi)
        case "iPad6,4":
            return iPadModel.ModelPro_9(cellularType: .GSM)
        case "iPad6,11":
            return iPadModel.Model5(cellularType: .WiFi)
        case "iPad6,12":
            return iPadModel.Model5(cellularType: .GSM)
        case "iPad7,1":
            return iPadModel.ModelPro_12(cellularType: .WiFi)
        case "iPad7,2":
            return iPadModel.ModelPro_12(cellularType: .GSM)
        case "iPad7,3":
            return iPadModel.ModelPro_10(cellularType: .WiFi)
        case "iPad7,4":
            return iPadModel.ModelPro_10(cellularType: .GSM)
        case "iPad7,5":
            return iPadModel.Model6(cellularType: .WiFi)
        case "iPad7,6":
            return iPadModel.Model6(cellularType: .GSM)
        case "iPad8,1":
            return iPadModel.ModelPro_11(cellularType: .WiFi)
        case "iPad8,2":
            return iPadModel.ModelPro_11(cellularType: .WiFi)
        case "iPad8,3":
            return iPadModel.ModelPro_11(cellularType: .GSM)
        case "iPad8,4":
            return iPadModel.ModelPro_11(cellularType: .GSM)
        case "iPad8,5":
            return iPadModel.ModelPro_12(cellularType: .WiFi)
        case "iPad8,6":
            return iPadModel.ModelPro_12(cellularType: .WiFi)
        case "iPad8,7":
            return iPadModel.ModelPro_12(cellularType: .GSM)
        case "iPad8,8":
            return iPadModel.ModelPro_12(cellularType: .GSM)
        case "iPad11,3":
            return iPadModel.ModelAir3(cellularType: .WiFi)
        case "iPad11,4":
            return iPadModel.ModelAir3(cellularType: .GSM)
        // MARK: iPad Min
        case "iPad2,5":
            return iPadModel.ModelMini(cellularType: .WiFi)
        case "iPad2,6":
            return iPadModel.ModelMini(cellularType: .GSM)
        case "iPad2,7":
            return iPadModel.ModelMini(cellularType: .GSM)
        case "iPad4,4":
            return iPadModel.ModelMini2(cellularType: .WiFi)
        case "iPad4,5":
            return iPadModel.ModelMini2(cellularType: .GSM)
        case "iPad4,6":
            return iPadModel.ModelMini2(cellularType: .WiFi)
        case "iPad4,7":
            return iPadModel.ModelMini3(cellularType: .WiFi)
        case "iPad4,8":
            return iPadModel.ModelMini3(cellularType: .GSM)
        case "iPad4,9":
            return iPadModel.ModelMini3(cellularType: .GSM)
        case "iPad5,1":
            return iPadModel.ModelMini4(cellularType: .WiFi)
        case "iPad5,2":
            return iPadModel.ModelMini4(cellularType: .GSM)
        case "iPad11,1":
            return iPadModel.ModelMini5(cellularType: .WiFi)
        case "iPad11,2":
            return iPadModel.ModelMini5(cellularType: .GSM)
        // MARK: iPhone
        case "iPhone1,1":
            return iPhoneModel.Original(cellularType: .GSM)
        case "iPhone1,2":
            return iPhoneModel.Model3G(cellularType: .GSM)
        case "iPhone2,1":
            return iPhoneModel.Model3GS(cellularType: .GSM)
        case "iPhone3,1":
            return iPhoneModel.Model4(cellularType: .GSM)
        case "iPhone3,2":
            return iPhoneModel.Model4(cellularType: .GSM)
        case "iPhone3,3":
            return iPhoneModel.Model4(cellularType: .CDMA)
        case "iPhone4,1":
            return iPhoneModel.Model4S(cellularType: .GSM)
        case "iPhone5,1":
            return iPhoneModel.Model5(cellularType: .GSM)
        case "iPhone5,2":
            return iPhoneModel.Model5(cellularType: .CDMA)
        case "iPhone5,3":
            return iPhoneModel.Model5C(cellularType: .GSM)
        case "iPhone5,4":
            return iPhoneModel.Model5C(cellularType: .GSM)
        case "iPhone6,1":
            return iPhoneModel.Model5S(cellularType: .GSM)
        case "iPhone6,2":
            return iPhoneModel.Model5S(cellularType: .GSM)
        case "iPhone7,2":
            return iPhoneModel.Model6S(cellularType: .GSM)
        case "iPhone7,1":
            return iPhoneModel.Model6(cellularType: .GSM)
        case "iPhone8,1":
            return iPhoneModel.Model6S(cellularType: .GSM)
        case "iPhone8,2":
            return iPhoneModel.Model6SPlus(cellularType: .GSM)
        case "iPhone8,4":
            return iPhoneModel.ModelSE(cellularType: .GSM)
        case "iPhone9,1":
            return iPhoneModel.Model7(cellularType: .GSM)
        case "iPhone9,2":
            return iPhoneModel.Model7Plus(cellularType: .GSM)
        case "iPhone9,3":
            return iPhoneModel.Model7(cellularType: .GSM)
        case "iPhone9,4":
            return iPhoneModel.Model7Plus(cellularType: .GSM)
        case "iPhone10,1":
            return iPhoneModel.Model8(cellularType: .GSM)
        case "iPhone10,2":
            return iPhoneModel.Model8Plus(cellularType: .GSM)
        case "iPhone10,3":
            return iPhoneModel.ModelX(cellularType: .GSM)
        case "iPhone10,4":
            return iPhoneModel.Model8(cellularType: .GSM)
        case "iPhone10,5":
            return iPhoneModel.Model8Plus(cellularType: .GSM)
        case "iPhone10,6":
            return iPhoneModel.ModelX(cellularType: .GSM)
        case "iPhone11,2":
            return iPhoneModel.ModelXS(cellularType: .GSM)
        case "iPhone11,6":
            return iPhoneModel.ModelXSMax(cellularType: .GSM)
        default:
            return AppleDeviceModel.Simulator
        }
    }
}

Pod::Spec.new do |spec|

  spec.name         = "DeviceDetector"
  spec.version      = "0.1.1"
  spec.summary      = "DeviceDetector lib for device's model detecting on Swift"
  spec.description  = <<-DESC
                   DeviceDetecor library able to detect and compare the device model
                    DESC
  spec.description  = <<-DESC
    DeviceDetecor library able to detect and compare the device model
                         DESC
  spec.homepage     = "https://github.com/Zaakk/DeviceDetector"

  spec.license      = "MIT"

  spec.author       = { "Zaakk" => "me@zaakk.com" }

  spec.platform     = :ios, "9.0"

  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target = "9.0"


  spec.source       = { :git => "https://github.com/Zaakk/DeviceDetector.git", :tag => "#{spec.version}" }

  spec.source_files  = "DeviceDetector/**/*.{h,m,swift}"


  spec.swift_version = "4.2"

end

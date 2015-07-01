Pod::Spec.new do |s|
  s.name         = "JaaleeBeacon"
  s.version      = "2.5"
  s.summary      = "Jaalee Beacon iOS SDK"

  s.description  = <<-DESC
                   Jaalee Beacon iOS SDK allows for:

                   * beacon ranging (scan beacons and optionally filters them by their values)
                   * beacon monitoring (monitors regions for those devices that have entered/exited a region)
                   * beacon characteristic reading and writing (proximity UUID, major & minor values, broadcasting power, advertising interval), see BeaconConnection class and demos in the source code
                   DESC

  s.homepage     = "https://github.com/jaalee/Jaalee-Beacon-iOS-SDK-master"
  s.license      = { :type => "Copyright", :text => "Copyright (c) 2014年 jaalee." }
  s.author       = { "JAALEE" => "dev@jaalee.com" }

  s.source       = { :git => "https://github.com/jaalee/Jaalee-Beacon-iOS-SDK-master.git", :commit => "59ee2128f2717e98ce3457c0a81dad8127210d52" }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
     
  s.module_name  = "JaaleeBeacon"
  s.header_dir   = "JaaleeBeacon"
        
  s.source_files         = "SDK/**/*.{m,h}"
  s.public_header_files  = "SDK/**/*.h"
    
  s.vendored_libraries = "SDK/libJaaleeBeaconSDK.a"
  s.libraries = "JaaleeBeaconSDK"
  
  s.prepare_command = "touch SDK/JLEForceFrameworkBuild.m"
end

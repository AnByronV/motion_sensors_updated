#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint motion_sensors_updated.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'motion_sensors_updated'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin for accessing the Android and iOS accelerometer, gyroscope, magnetometer, and orientation sensors.'
  s.description      = <<-DESC
Flutter plugin for accessing the Android and iOS accelerometer, gyroscope, magnetometer, and orientation sensors.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end

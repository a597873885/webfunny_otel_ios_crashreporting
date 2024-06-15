#
# NOTE: Be sure to run
#
# `pod lib lint SplunkOtelCrashReporting.podspec`
#
#  to ensure this is a valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'webfunny_otel_ios_crashreporting'  
  s.version          = '0.0.1'  
  s.summary          = 'webfunny OpenTelemetry Crash Reporting pod for iOS' 
  s.description      = <<-DESC
The Splunk RUM agent for iOS provides a Swift package that captures:
HTTP requests, using URLSession instrumentation
Application startup information
UI activity - screen name (typically ViewController name), actions, and PresentationTransitions
Crashes/unhandled exceptions using SplunkRumCrashReporting
🚧 This project is currently in BETA. It is officially supported by Splunk. However, breaking changes MAY be introduced.
DESC

  s.swift_version    = '5.1'
  s.cocoapods_version = '>= 1.10'

  s.homepage         = 'https://github.com/HK-ant/webfunny_otel_ios_crashreporting.git'
  s.license          = { :type => "Apache", :file => 'LICENSE' }
  s.author           = { 'Splunk' => 'www.splunk.com' }
  s.source           = { :git => 'https://github.com/HK-ant/webfunny_otel_ios_crashreporting.git', :tag => s.version.to_s }
# Make sure the deployment target matches with Package.swift
  s.ios.deployment_target = '11.0'
  s.source_files = 'SplunkRumCrashReporting/SplunkRumCrashReporting/**/*.swift'
  s.static_framework = true
  s.dependency 'PLCrashReporter', '~> 1.11.1'
  s.dependency 'webfunny_otel_ios', '~> 0.0.1'
end
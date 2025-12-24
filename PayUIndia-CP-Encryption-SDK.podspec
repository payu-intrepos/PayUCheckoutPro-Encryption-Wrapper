Pod::Spec.new do |s|
  s.name                = "PayUIndia-CP-Encryption-SDK"
  s.version             = "1.0.0.alpha.1"
  s.license             = "MIT"
  s.homepage            = "https://github.com/payu-intrepos/PayUCheckoutPro-Encryption-Wrapper"
  s.author              = { "PayU" => "contact@payu.in"  }

  s.summary             = "Encryption Wrapper of PayU Checkoutpro SDK"
  s.description         = "Encryption Wrapper of PayU Checkoutpro SDK"

  s.source              = { :git => "https://github.com/payu-intrepos/PayUCheckoutPro-Encryption-Wrapper.git",
                            :tag => "#{s.version}"
                          }
  s.documentation_url   = "https://devguide.payu.in/mobile-sdk-ios/introduction-to-payu-mobile-sdk/"
  s.platform            = :ios , "13.0"
  s.vendored_frameworks = 'CPBharakoshWrapperiOS.xcframework'

  s.dependency            'PayUIndia-CheckoutPro', '~> 9.0'
end

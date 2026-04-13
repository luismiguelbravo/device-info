import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DeviceInfoPlugin)
@objcMembers
public class DeviceInfoPlugin: CAPPlugin {
    public override func load() {
        print("DeviceInfoPlugin loaded")
    }

    @objc(getLocaleInfo:)
    public func getLocaleInfo(_ call: CAPPluginCall) {
        print("DeviceInfoPlugin.getLocaleInfo called")
        let locale = Locale.current

        let currency = locale.currencyCode ?? {
            if let region = locale.regionCode {
                return Locale(identifier: "en_\(region)").currencyCode ?? "USD"
            }
            return "USD"
        }()

        call.resolve([
            "language": locale.languageCode ?? "en",
            "country": locale.regionCode ?? "US",
            "currency": currency,
            "identifier": locale.identifier
        ])
    }

    @objc(getInfo:)
    public func getInfo(_ call: CAPPluginCall) {
        print("DeviceInfoPlugin.getInfo called")
        getLocaleInfo(call)
    }
}

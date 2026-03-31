import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DeviceInfoPlugin)
public class DeviceInfoPlugin: CAPPlugin, CAPBridgedPlugin {
    @objc func getLocaleInfo(_ call: CAPPluginCall) {
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
}

import Foundation

@objc public class DeviceInfo: NSObject {
    @objc public func getDeviceData() -> [String: String] {
        let locale = Locale.current
        
        return [
            "language": locale.language.languageCode?.identifier ?? "",
            "country": locale.region?.identifier ?? "",
            "currency": locale.currency?.identifier ?? "",
            "identifier": locale.identifier
        ]
    }
}

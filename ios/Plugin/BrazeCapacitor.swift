import Foundation
import Cordova

@objc public class BrazeCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    @objc public func sendJSON(_ value: String) -> String {
        // Receive data from JS and post to AppDelegate
        NotificationCenter.default.post(name: Notification.Name(rawValue: "JSON"), object: [ "json" : value ])
        return value
    }    
}
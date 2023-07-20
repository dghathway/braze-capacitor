import Foundation
import Cordova

@objc public class BrazeCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    @objc public func sendJSON(_ key: String, __ value: String) -> String {
        // Receive data from JS and post to AppDelegate
        print("sendJSON NotificationCenter")
        NotificationCenter.default.post(name: Notification.Name(rawValue: "JSON"), object: [ key : value ])
        return value
    }     
}

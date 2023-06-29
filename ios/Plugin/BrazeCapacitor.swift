import Foundation
import Cordova

@objc public class BrazeCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    @objc public func sendJSON(_ key: String, __ value: Any) -> Any {
        // Receive data from JS and post to AppDelegate
        print("sendJSON NotificationCenter")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "JSON"), object: nil, userInfo: [key : value]) 

        return value
    }     
}
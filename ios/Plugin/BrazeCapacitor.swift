import Foundation
import Cordova

@objc public class BrazeCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    @objc public func sendJSON(_ value: String) -> String {
        // Receive data from JS and post to AppDelegate
        print("sendJSON NotificationCenter")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "JSON"), object: nil, userInfo: ["json" : value]) 

        return value
    }    
}
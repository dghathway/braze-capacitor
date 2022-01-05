import Foundation
import Appboy_iOS_SDK

@objc public class BrazeCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}

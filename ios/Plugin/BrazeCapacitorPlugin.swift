import Foundation
import Capacitor

@objc(BrazeCapacitorPlugin)
public class BrazeCapacitorPlugin: CAPPlugin {
    private let implementation = BrazeCapacitor()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func initIt(_ call: CAPPluginCall) {
        
        let key = call.getString("key") ?? ""
        call.resolve([
            "key": implementation.echo(key)
        ])
    }

    @objc func sendJSON(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? "" 
        let key = call.getString("key") ?? ""
        
        call.resolve([
            key: implementation.sendJSON(value)
        ])
    }
}
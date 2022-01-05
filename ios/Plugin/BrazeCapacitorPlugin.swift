import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
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
        let value = call.getString("key") ?? ""
        call.resolve([
            "key": implementation.echo(value)
        ])
    }
    
    @objc func login(_ call: CAPPluginCall) {
        let value = call.getString("email") ?? ""
        call.resolve([
            "email": implementation.echo(value)
        ])
    }
    
    @objc func logout(_ call: CAPPluginCall) {
        let value = call.getString("email") ?? ""
        call.resolve([
            "email": implementation.echo(value)
        ])
    }
    
}

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
        let key = call.getString("key") ?? ""
        let value = call.getAny("value") as? JSObject;

        // if let bar = fooCAP["bar"] as? JSObject {
        //     if let color = bar["color"] as? String {
        //         // Do something
        //     }
        // }

        // not working...
        
        call.resolve([
            key: implementation.sendJSON(_: key, __: value)
        ])
    }
}
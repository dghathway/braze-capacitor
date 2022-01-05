import Foundation
import Capacitor
import Appboy_iOS_SDK

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
        
//        let radarKey = "prj_test_pk_f2c81bc7fbc7e137848d119c55c844fb190061b6";
//        Radar.initialize(publishableKey: radarKey);
        
        let value = call.getString("key") ?? ""
        call.resolve([
            "key": implementation.echo(value)
        ])
    }
    
    @objc func login(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""
        
        //Appboy.sharedInstance()?.changeUser(email)
        //Radar.setMetadata(["brazeExternalId": email])
        
        call.resolve([
            "email": implementation.echo(email)
        ])
    }
    
    @objc func logout(_ call: CAPPluginCall) {
        let value = call.getString("email") ?? ""
        call.resolve([
            "email": implementation.echo(value)
        ])
    }
    
}

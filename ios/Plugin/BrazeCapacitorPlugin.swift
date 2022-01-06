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
        
        let key = call.getString("key") ?? ""
        call.resolve([
            "key": implementation.echo(key)
        ])
    }
    
    @objc func login(_ call: CAPPluginCall) {
        let email = call.getString("email") ?? ""

        // send this email to AppDelegate.swift
        
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

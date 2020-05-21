import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(handwrite)
public class handwrite: CAPPlugin {
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }

    @objc func  handWrite(_ call :CAPPluginCall){
         let value = call.getString("path") ?? ""
       // call.success([
       //     "value": value
       //  ])
         call.success([
            "value": value
        ])
    }
}

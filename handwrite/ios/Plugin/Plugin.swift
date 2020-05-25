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
        if(""==value){
            call.reject("path is null");
        }
         call.success([
            "value": value
        ])
      DispatchQueue.main.async {

        let myViewController = secondViewController()
        
        myViewController.backValueclusore = {(text:String)->Void in
               print("-\(text) message -\(text)")
        }
        
        myViewController.path = value;
        
        //设置占满全屏
        myViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
      //  myViewController.edgesForExtendedLayout = UIRectEdge.right
            //UIRectEdge.all UIRectEdgeNone  uirectedgenone
            //myViewController.edgesForExtendedLayout = uirectedgenone;
              
      //  self.setCenteredPopover(myViewController)
       self.bridge.viewController.present(myViewController, animated: false, completion: nil)
    
     //跳转
     //   self.bridge.viewController.(myViewController , animated: true)
        }
    }
}

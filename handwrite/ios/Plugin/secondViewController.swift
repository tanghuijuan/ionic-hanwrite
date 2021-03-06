//
//  secondViewController.swift
//  Handwrite
//
//  Created by shanghai3h on 2020/5/24.
//

import UIKit

extension Date {

    /// 获取当前 秒级 时间戳 - 10位
    var timeStamp : String {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return "/\(timeStamp).png"
    }

    /// 获取当前 毫秒级 时间戳 - 13位
    var milliStamp : String {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let millisecond = CLongLong(round(timeInterval*1000))
        return "/\(millisecond).png"
    }
}

class secondViewController: UIViewController {
    
    var backValueclusore:((_ text:String)->Void)?
    var path:String?
    
    var fileName:String?
    
    //签名区域视图
    var drawView:DrawSignatureView!
    
                 
    @IBAction func toPrePage(_ sender: Any) {
        let signatureImage = self.drawView.getSignature()
        UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
        
        
        fileName = Date().timeStamp
        print("message -\(path)")
        
        if path == nil{
            path =  "/Documents/sh3h/ordermanager/attachment/images"
         } else {
        //    path = "/\(path)"
            path = "/".appending( path ?? "Documents/sh3h/ordermanager/attachment/images")  as String
        }
        
        let fileManager = FileManager.default
        let fileDirectory:String = NSHomeDirectory() + (path ??  "Documents/sh3h/ordermanager/attachment/images")
        let exist = fileManager.fileExists(atPath: fileDirectory)
        if !exist {
          //  try! fileManager.createDirectory(atPath : fileDirectory,
                             //       withIntermediateDirectories: true, attributes: nil)
          try! fileManager.createDirectory(atPath : fileDirectory,
                                            withIntermediateDirectories: true, attributes: nil)
        }
        
        let dt:String = (fileDirectory  + (fileName ?? "/1000001.png") ) as String;
        
        print("message -\(dt)")
             
        try? signatureImage.pngData()?.write(to: URL(fileURLWithPath: dt))

        self.drawView.clearSignature()
        
        self.backValueclusore!(fileName ?? "/1000001.png")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clearImage(_ sender: Any) {
        self.drawView.clearSignature()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white;
        
        let screenh = UIScreen.main.applicationFrame.size.height

        let screenw = UIScreen.main.applicationFrame.size.width
        
        let button:UIButton = UIButton(frame: CGRect(x: 10, y: 40, width: 50, height: 50));
        button.setTitle("保存", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal);
        button.addTarget(self, action: #selector(toPrePage), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        let clear :UIButton = UIButton(frame: CGRect(x: 100, y: 40, width: 50, height: 50));
              clear.setTitle("清除", for: UIControl.State.normal)
              clear.setTitleColor(UIColor.black, for: UIControl.State.normal);
              clear.addTarget(self, action: #selector(clearImage), for: .touchUpInside)
        self.view.addSubview(clear)
        
        let drawViewFrame = CGRect(x:1,y:100,width:screenw ,height: screenh-100)
            //  drawViewFrame.size.height = 200
              //添加签名区域
        drawView = DrawSignatureView(frame: drawViewFrame)
        drawView.backgroundColor=UIColor.gray;
              self.view.addSubview(drawView)
        // Do any additional setup after loading the view.
    }


}

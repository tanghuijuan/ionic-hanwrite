//
//  MyViewController.swift
//  Handwrite
//
//  Created by shanghai3h on 2020/5/24.
//

import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var clear: UIButton!
    //签名预览
  //  @IBOutlet weak var imageView: UIImageView!

    //签名区域视图
 //   var drawView:DrawSignatureView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //签名区域位置尺寸
    // var drawViewFrame = self.view.bounds
    //    drawViewFrame.size.height = 200
             //添加签名区域
   // drawView = DrawSignatureView(frame: drawViewFrame)
     //   drawView.
  //   self.view.addSubview(drawView)
    }
    
    //预览签名
    @IBAction func previewSignature(_ sender: AnyObject) {
     //   let signatureImage = self.drawView.getSignature()
    }
    
    //保存签名
    @IBAction func savaSignature(_ sender: AnyObject) {
    //    let signatureImage = self.drawView.getSignature()
     //   UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
     //   self.drawView.clearSignature()
    }
    
    //清除签名
    @IBAction func clearSignature(_ sender: AnyObject) {
    
     //   self.drawView.clearSignature()
    //    self.imageView.image = nil
    }
    @IBAction func clear(_ sender: Any) {
    //    self.drawView.clearSignature()
      //        self.imageView.image = nil
    }
    @IBAction func save(_ sender: Any) {
    //   let signatureImage = self.drawView.getSignature()
    //          UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
    //          self.drawView.clearSignature()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

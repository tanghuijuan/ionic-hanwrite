//
//  secondViewController.swift
//  Handwrite
//
//  Created by shanghai3h on 2020/5/24.
//

import UIKit

class secondViewController: UIViewController {
    
    var backValueclusore:((_ text:String)->Void)?
    var path:String?;
    
    //签名区域视图
    var drawView:DrawSignatureView!
    
    
    @IBAction func toPrePage(_ sender: Any) {
        let signatureImage = self.drawView.getSignature()
        UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
        self.drawView.clearSignature()
        
        self.backValueclusore!("123")
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

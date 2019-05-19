//
//  FoodViewController.swift
//  RandomTripper
//
//  Created by 松尾大雅 on 2019/05/10.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

    //背景画像
    @IBOutlet var haikeiimageview: UIImageView!
    
    //@IBOutlet weak var nameLabel: UILabel!
    
    
    
//    var result:[String] = ["滋賀県　ちゃんぽん亭総本家の近江ちゃんぽん", "大阪府　テッチャン鍋金太郎のちりとり鍋", "京都府　居様（いざま）のおばんざい御膳", "和歌山県　生しらす丼","三重県　すし久の手こね寿司"]
//
    
    //背景画像を保存する配列
    var  haikeiArray : [UIImage]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
        
        //0-4の間でランダムに数字を表示させる
        let number = Int.random(in: 0..<4)
        
        //背景の画像を4枚追加する
        haikeiArray = [UIImage(named:"siro.png")!,
        UIImage(named:"img_main.jpg")!,
        UIImage(named:"1.jpg")!,
        UIImage(named:"image12.jpg")!]
        
        haikeiimageview.image = haikeiArray[number]
        
        
        
        

        
        
        
        // ViewControllerの背景色
        self.view.backgroundColor = UIColor.init(
            red:0.71, green: 1.0, blue: 0.95, alpha: 1)
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        
        
        
        // ボタン1のインスタンス生成
        let button1 = UIButton()
        // ボタンの位置とサイズを設定
        button1.frame = CGRect(x:screenWidth/9, y:screenHeight/2,
                               width:screenWidth/0.8, height:60)
        // ボタンのタイトルを設定
        button1.setTitle("滋賀県　ちゃんぽん亭総本家の近江ちゃんぽん", for:UIControl.State.normal)
        // タイトルの色
        button1.setTitleColor(UIColor.white, for: .normal)
        // ボタンのフォントサイズ
        button1.titleLabel?.font =  UIFont.systemFont(ofSize: 18)
        // 背景色
        button1.backgroundColor = UIColor.init(
            red:0.9, green: 0.9, blue: 0.9, alpha: 1)
        
        
        
        
        
        //button2を作成
        
        
        // ボタンのインスタンス生成
        let button2 = UIButton()
        // ボタンの位置とサイズを設定
        button2.frame = CGRect(x:screenWidth/9, y:screenHeight/3,
                               width:screenWidth/0.8, height:60)
        // ボタンのタイトルを設定
        button2.setTitle("大阪府　テッチャン鍋金太郎のちりとり鍋", for:UIControl.State.normal)
        // タイトルの色
        button2.setTitleColor(UIColor.white, for: .normal)
        // ボタンのフォントサイズ
        button2.titleLabel?.font =  UIFont.systemFont(ofSize: 18)
        // 背景色
        button2.backgroundColor = UIColor.init(
            red:0.9, green: 0.9, blue: 0.9, alpha: 1)
        
        
        
        //button3を作成
        
        let button3 = UIButton()
        // ボタンの位置とサイズを設定
        button3.frame = CGRect(x:screenWidth/9, y:screenHeight/5,
                               width:screenWidth/0.8, height:60)
        // ボタンのタイトルを設定
        button3.setTitle("京都府　居様（いざま）のおばんざい御膳", for:UIControl.State.normal)
        // タイトルの色
        button3.setTitleColor(UIColor.white, for: .normal)
        // ボタンのフォントサイズ
        button3.titleLabel?.font =  UIFont.systemFont(ofSize: 18)
        // 背景色
        button3.backgroundColor = UIColor.init(
            red:0.9, green: 0.9, blue: 0.9, alpha: 1)
        
        
        
       
        
        let buttoArray:[UIButton] = [button1,button2,button3]
        
        //配列から取り出してviewに追加
        var but = Int.random(in:0..<3)
        view.addSubview(buttoArray[but])
        
        
        
        //ボタンを押した時に実行するメソッドを指定
        button1.addTarget(self, action: #selector(self.Pushbutton1(sender:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(self.Pushbutton2(sender:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(self.Pushbutton3(sender:)), for: .touchUpInside)

    }
    
    @objc func Pushbutton1(sender: UIButton) {
        let url = URL(string: "http://chanpontei.com/aboutus/")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @objc func Pushbutton2(sender: UIButton) {
        let url = URL(string: "https://tabelog.com/osaka/A2701/A270202/27033140/")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @objc func Pushbutton3(sender: UIButton) {
        let url = URL(string: "https://tabelog.com/kyoto/A2601/A260202/26023391/")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    
    
   

// / Viewにボタンを追加
//    //self.view.addSubview(button3)
//
//    let buttoArray:[UIButton] = [button1,button2,button3]
//
//    //配列から取り出してviewに追加
//    for button in buttoArray{
//    view.addSubview(button)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//押したらサイトに飛ぶボタンをランダムに取り出したい
}

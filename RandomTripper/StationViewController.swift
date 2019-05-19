//
//  StationViewController.swift
//  RandomTripper
//
//  Created by 松尾大雅 on 2019/05/10.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class StationViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var result:[String] = ["草津駅", "難波駅", "三条駅", "和歌山市駅","伊勢市駅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num = Int(arc4random_uniform(5))
        nameLabel.text = "\(result[num])へ行ってください！"
        
        
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

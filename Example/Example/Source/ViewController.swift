//
//  ViewController.swift
//  Example
//
//  Created by Servyou on 2020/8/5.
//  Copyright © 2020 Wmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        test()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        test()
    }

    func test() {
        
// MARK: - 使用方式一：直接使用YProgressHUD
//        YProgressHUD.showToast("Some text...")
//        YProgressHUD.showToast("Some text...", delay: 5, interaction: false)
        
//        YProgressHUD.animationType = .systemActivityIndicator
//        YProgressHUD.show("loading...", interaction: false)

//        YProgressHUD.colorAnimation = UIColor.green.withAlphaComponent(0.68)
//        YProgressHUD.showSucceed("Success", interaction: true)
//
//        YProgressHUD.colorAnimation = UIColor.red.withAlphaComponent(0.68)
//        YProgressHUD.showFailed("Failed", interaction: true)
//
//        YProgressHUD.colorAnimation = UIColor.white.withAlphaComponent(0.68)
//        YProgressHUD.showAdded("Added", interaction: true)
//
//        if #available(iOS 13.0, *) {
//            YProgressHUD.showSuccess("Success")
//            YProgressHUD.showSuccess("Success", image: nil, interaction: true)
//            YProgressHUD.showError("Error")
//            YProgressHUD.colorAnimation = .red
//            YProgressHUD.show("alert icon", icon: .heart)
//
//        }
//        YProgressHUD.showProgress(0.6, interaction: false)
//        YProgressHUD.showProgress("upload..." , 0.6, interaction: false)

        
// MARK: - 使用方式二（推荐）：根据目需求二次封装一个HUD类
//        HUD.toast("Some text...")
//        HUD.toast("Some text...", delay: 3, interaction: false)
//        HUD.loading()
//        HUD.success()
//        HUD.failed()
//        HUD.progress(0.4)
//        HUD.progress("upload...", 0.6)
        HUD.loading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            HUD.toast("success")
        }
                
    }
}


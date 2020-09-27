
/**
 HUD.toast("Some text...")
 HUD.toast("Some text...", delay: 5, interaction: false)
 HUD.showLoading()
 HUD.showSuccess()
 HUD.showFailed()
 HUD.showProgress(0.4)
 HUD.showProgress("upload...", 0.6)
 */

import UIKit
//import YProgressHUD

open class HUD {
    
    // MARK: - hide
    class func hide(animate: Bool = true) {
        YProgressHUD.dismiss(animate: animate)
    }
    
    // MARK: - toast
    class func toast(_ status: String?, delay: Double = -1, interaction: Bool = true) {
        YProgressHUD.showToast(status, delay: delay, interaction: interaction)
    }
    
    // MARK: - loading
    class func loading(_ status: String? = "loading...") {
        YProgressHUD.animationType = .circleRotateChase
        YProgressHUD.show(status, interaction: false)
    }
    
    // MARK: - success
    class func success(_ status: String? = "success") {
        if #available(iOS 13.0, *) {
            YProgressHUD.showSuccess(status)
        }else {
            YProgressHUD.colorAnimation = UIColor.green.withAlphaComponent(0.68)
            YProgressHUD.showSucceed(status, interaction: true)
        }
    }
    
    // MARK: - failed
    class func failed(_ status: String? = "failed") {
        if #available(iOS 13.0, *) {
            YProgressHUD.showError(status)
        }else {
            YProgressHUD.colorAnimation = UIColor.green.withAlphaComponent(0.68)
            YProgressHUD.showSucceed(status, interaction: true)
        }
    }

    // MARK: - progress
    class func progress(_ progress: CGFloat) {
        YProgressHUD.showProgress(progress, interaction: false)
    }
    
    class func progress(_ status: String?, _ progress: CGFloat) {
        YProgressHUD.showProgress(status , progress, interaction: false)
    }
    
}

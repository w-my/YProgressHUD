# YProgressHUD

源于 [relatedcode/ProgressHUD](https://github.com/relatedcode/ProgressHUD)，修改部分代码，实现低版本支持。如有侵权，请联系 `972537949@qq.com` 删除，谢谢！



## Requirements

iOS 10.0+



## Basic Examples

```swift
YProgressHUD.showToast("Some text...")
```
```swift
YProgressHUD.showToast("Some text...", delay: 5, interaction: false)
```
```swift
YProgressHUD.show("loading...", interaction: false)
```
```swift
YProgressHUD.showSucceed("Success", interaction: true)
```
```swift
YProgressHUD.showFailed("Failed", interaction: true)
```
```swift
YProgressHUD.showAdded("Added", interaction: true)
```
```swift
if #available(iOS 13.0, *) {
    YProgressHUD.showSuccess("Success")
    YProgressHUD.showSuccess("Success", image: nil, interaction: true)
    YProgressHUD.showError("Error")
    YProgressHUD.colorAnimation = .red
    YProgressHUD.show("alert icon", icon: .heart)
}
```
```swift
YProgressHUD.showProgress(0.6, interaction: false)
```
```swift
YProgressHUD.showProgress("upload..." , 0.6, interaction: false)
```



## Customization

```swift
YProgressHUD.animationType = .circleStrokeSpin
```
```swift
YProgressHUD.colorHUD = .systemGray
```
```swift
YProgressHUD.colorBackground = .lightGray
```
```swift
YProgressHUD.colorAnimation = .systemBlue
```
```swift
YProgressHUD.colorProgress = .systemBlue
```
```swift
YProgressHUD.colorStatus = .label
```
```swift
YProgressHUD.fontStatus = .boldSystemFont(ofSize: 24)
```
```swift
YProgressHUD.imageSuccess = UIImage(named: "success.png")
```
```swift
YProgressHUD.imageError = UIImage(named: "error.png")
```


## Custom Example
```swift
import UIKit
import YProgressHUD

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
```

#### Use Custom Examples
```swift
HUD.toast("Some text...")
HUD.toast("Some text...", delay: 3, interaction: false)
HUD.showLoading()
HUD.showSuccess()
HUD.showFailed()
HUD.showProgress(0.4)
HUD.showProgress("upload...", 0.6)

HUD.loading()
DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    HUD.toast("success")
}
```

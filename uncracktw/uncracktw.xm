
// Logos by Dustin Howett
// See http://iphonedevwiki.net/index.php/Logos



#import <UIKIt/UIKit.h>

%hook ViewController

- (void)viewDidLoad {

    %orig;

    // 密码
    NSString *pw = @"";
    // 单行输入框
    UITextField *textField = nil;
    // 当前控制器
    UIViewController *vc = (UIViewController *)self;

    // 遍历查询隐藏得label
    for (UIView *subview in vc.view.subviews) {
        if ([subview isKindOfClass:[UILabel class]] && subview.isHidden) {
            UILabel *label = (UILabel*)subview;
            // 保存label内容，并将label设置为可见
            pw = [label text];
            [label setHidden:NO];
        } else if ([subview isKindOfClass:[UITextField class]]) {
            textField = (UITextField *)subview;
        }
    }
    
    // 将找到密文赋值给输入框
    if (textField != nil) {
        textField.text = pw;
    }


}

%end

#line 1 "/Users/chensh/myDoc/workSpace/iOSREProject/uncracktw/uncracktw/uncracktw.xm"






#import <UIKIt/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ViewController; 
static void (*_logos_orig$_ungrouped$ViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL); 

#line 9 "/Users/chensh/myDoc/workSpace/iOSREProject/uncracktw/uncracktw/uncracktw.xm"


static void _logos_method$_ungrouped$ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    _logos_orig$_ungrouped$ViewController$viewDidLoad(self, _cmd);

    
    NSString *pw = @"";
    
    UITextField *textField = nil;
    
    UIViewController *vc = (UIViewController *)self;

    
    for (UIView *subview in vc.view.subviews) {
        if ([subview isKindOfClass:[UILabel class]] && subview.isHidden) {
            UILabel *label = (UILabel*)subview;
            
            pw = [label text];
            [label setHidden:NO];
        } else if ([subview isKindOfClass:[UITextField class]]) {
            textField = (UITextField *)subview;
        }
    }
    
    
    if (textField != nil) {
        textField.text = pw;
    }


}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController"); MSHookMessageEx(_logos_class$_ungrouped$ViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$ViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$ViewController$viewDidLoad);} }
#line 43 "/Users/chensh/myDoc/workSpace/iOSREProject/uncracktw/uncracktw/uncracktw.xm"

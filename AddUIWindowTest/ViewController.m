//
//  ViewController.m
//  AddUIWindowTest
//
//  Created by yurongde on 16/2/24.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "ViewController.h"
#import "SDViewController.h"
#import "SDView.h"


@interface ViewController ()<SDViewControllerDelegate>
@property (nonatomic) UIWindow *jumpWindow;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
/**
 *  增加一个窗口
 *
 *  @param sender <#sender description#>
 */
- (IBAction)addWindow:(UIButton *)sender {
    if (self.jumpWindow) {
        return;
    }
    self.jumpWindow = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.jumpWindow makeKeyAndVisible];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SDViewController *sdview = [storyBoard instantiateViewControllerWithIdentifier:@"sdsd"];
    sdview.delegate = self;
    __weak typeof(&*self) weakSelf = self;
    [sdview setBlock:^{
        __strong typeof(&*self) strongSelf = weakSelf;
        strongSelf.jumpWindow.hidden = YES;
        [strongSelf.jumpWindow resignKeyWindow];
        strongSelf.jumpWindow = nil;
    }];
    self.jumpWindow.rootViewController = sdview;
}
- (IBAction)addAView:(UIButton *)sender {
        sender.enabled = NO;
        SDView *simpleView = [[SDView alloc]initWithFrame:CGRectMake(0, 0, 375, 200)];
        [[UIApplication sharedApplication].keyWindow addSubview:simpleView];


}
- (IBAction)checkWindow:(UIButton *)sender {
    NSLog(@"%@",self.jumpWindow);

}
//隐藏窗口的时候得将hidden设置为yes,不然这个window不会那么快消失
- (void)hide {
    _jumpWindow.hidden = YES;
    [_jumpWindow resignKeyWindow];
    _jumpWindow = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

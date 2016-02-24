//
//  SDViewController.m
//  AddUIWindowTest
//
//  Created by yurongde on 16/2/24.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewController ()

@end

@implementation SDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapAction:(UIButton *)sender {
    self.block();
//    [self.delegate hide];
}
- (void)setBlock:(MyBlock)block {
    _block = block;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

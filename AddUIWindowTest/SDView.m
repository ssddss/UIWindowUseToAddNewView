//
//  SDView.m
//  AddUIWindowTest
//
//  Created by yurongde on 16/2/24.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDView.h"
@interface SDView()
@property (nonatomic) UIButton *button;
@end
@implementation SDView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    
    [self addSubview:self.button];
    return self;
}
- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"哈哈" forState:UIControlStateNormal];
        [_button setFrame:CGRectMake(50, 50, 100, 100)];
        [_button addTarget:self action:@selector(targetAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}
- (void)targetAction:(UIButton *)button {
    NSLog(@"点击");
    [self removeFromSuperview];
}
@end

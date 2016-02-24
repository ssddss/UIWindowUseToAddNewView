//
//  SDViewController.h
//  AddUIWindowTest
//
//  Created by yurongde on 16/2/24.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^MyBlock)();
@protocol SDViewControllerDelegate <NSObject>

- (void)hide;

@end
@interface SDViewController : UIViewController
@property (nonatomic,copy) MyBlock block;
@property (nonatomic,weak) id<SDViewControllerDelegate> delegate;
@end

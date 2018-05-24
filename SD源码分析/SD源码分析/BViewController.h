//
//  BViewController.h
//  SD源码分析
//
//  Created by hefeng on 2018/3/23.
//  Copyright © 2018年 hefeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BViewController : UIViewController
@property (nonatomic, copy) void(^b_block)(NSString *param);
@end

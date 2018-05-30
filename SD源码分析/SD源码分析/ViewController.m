//
//  ViewController.m
//  SD源码分析
//
//  Created by hefeng on 2018/3/12.
//  Copyright © 2018年 hefeng. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "BViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

+ (id)shareVC {
    return [self new];
}


- (IBAction)rightClick:(UIBarButtonItem *)sender {
    _img.alpha = 0;
    
    [UIView animateWithDuration:0.5 animations:^{
        _img.alpha = 1;
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [self.img sd_setImageWithURL:[NSURL URLWithString:@"http://image.nationalgeographic.com.cn/2017/0802/20170802052401601.jpg"] placeholderImage:nil];
    
//    [self.img sd_setImageWithURL:[NSURL URLWithString:@"http://image.nationalgeographic.com.cn/2017/0802/20170802052401601.jpg"] placeholderImage:nil options:SDWebImageProgressiveDownload progress:nil completed:nil];
    
    [self.img setShowActivityIndicatorView:YES];
    [self.img setIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    [self.img sd_setImageWithURL:[NSURL URLWithString:@"http://image.nationalgeographic.com.cn/2017/0802/20170802052401601.jpg"] placeholderImage:nil options:SDWebImageProgressiveDownload progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        NSLog(@"\nerror:%@\ncacheType:%zd",error,cacheType);
    }];
    
}


@end

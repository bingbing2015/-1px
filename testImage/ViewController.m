//
//  ViewController.m
//  testImage
//
//  Created by 陈奕频 on 15/11/24.
//  Copyright © 2015年 陈奕频. All rights reserved.
//

#import "ViewController.h"
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 \
green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 \
blue:((float)(rgbValue & 0xFF)) / 255.0 alpha:1.0]

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *textimage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //边框永久设置为1px
    //    CGFloat inset  = (1 / [UIScreen mainScreen].scale) * 1.0f;
    //scale ＝ 1 代表1px，2代表2px，3代表3px
    CALayer * layer = self.textimage.layer;
    layer.borderColor = UIColorFromRGB(0x6d6d6d).CGColor;
    layer.borderWidth = 1.0 / [UIScreen mainScreen].scale;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

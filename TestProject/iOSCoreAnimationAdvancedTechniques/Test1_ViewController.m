//
//  Test1_ViewController.m
//  iOSCoreAnimationAdvancedTechniques
//
//  Created by 黄晓军 on 2019/8/5.
//  Copyright © 2019 黄晓军. All rights reserved.
//

#import "Test1_ViewController.h"

@interface Test1_ViewController ()
@property (nonatomic, weak) UIView *layerView;
@property (nonatomic, weak) CALayer *blueLayer;
@end

@implementation Test1_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"图层树";
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIView *layerView = [[UIView alloc] init];
    layerView.bounds = CGRectMake(0, 0, 200, 200);
    layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:layerView];
    self.layerView = layerView;
    
    CALayer *blueLayer = [CALayer layer];// CALayer 使用时，并未需要导入头文件和 QuartzCore 框架
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    [self.layerView.layer addSublayer:blueLayer];
    self.blueLayer = blueLayer;
    
}

- (void)viewDidLayoutSubviews {
    self.layerView.center = self.view.center;
    self.blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
}

@end

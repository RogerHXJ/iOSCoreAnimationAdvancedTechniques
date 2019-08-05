//
//  Test2_ViewController.m
//  iOSCoreAnimationAdvancedTechniques
//
//  Created by 黄晓军 on 2019/8/5.
//  Copyright © 2019 黄晓军. All rights reserved.
//

#import "Test2_ViewController.h"

@interface Test2_ViewController ()
@property (nonatomic, weak) UIView *layerView;
@end

@implementation Test2_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"寄宿图";
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIView *layerView = [[UIView alloc] init];
    layerView.bounds = CGRectMake(0, 0, 200, 200);
    layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:layerView];
    self.layerView = layerView;
    
    UIImage *image = [UIImage imageNamed:@"Snowman.jpeg"];
    self.layerView.layer.contents = (__bridge id _Nullable)(image.CGImage);
    
    //[self basicTest];
    
    [self contentsRectTest];
    
    
}

- (void)basicTest {
    // 设置图片不被拉伸
    // 和cotentMode一样，contentsGravity的目的是为了决定内容在图层的边界中怎么对齐，我们将使用kCAGravityResizeAspect，它的效果等同于UIViewContentModeScaleAspectFit， 同时它还能在图层中等比例拉伸以适应图层的边界。
    
    // 图片适配 layerView 边框
    //self.layerView.contentMode = UIViewContentModeScaleAspectFit;
    //self.layerView.layer.contentsGravity = kCAGravityResizeAspect;
    
    // 设置图片拉伸
    self.layerView.layer.contentsGravity = kCAGravityCenter;
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    
    // 裁剪超出 layerView 边框部分的图片
    //self.layerView.clipsToBounds = YES;
    self.layerView.layer.masksToBounds = YES;
}

- (void)contentsRectTest {
    self.layerView.layer.contentsGravity = kCAGravityResizeAspect;
    // 截取图片的一部分显示
    self.layerView.layer.contentsRect = CGRectMake(0.5, 0, 0.5, 0.5);//右上角图片
}

- (void)viewDidLayoutSubviews {
    self.layerView.center = self.view.center;
}

@end

//
//  Test3_ViewController.m
//  iOSCoreAnimationAdvancedTechniques
//
//  Created by 黄晓军 on 2019/8/6.
//  Copyright © 2019 黄晓军. All rights reserved.
//

#import "Test3_ViewController.h"

@interface Test3_ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;
@end

@implementation Test3_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLayerShadow];
}

- (void)setupLayerShadow {
    //shadowOpacity是一个必须在0.0（不可见）和1.0（完全不透明）之间的浮点数。如果设置为1.0，将会显示一个有轻微模糊的黑色阴影稍微在图层之上。
    self.layerView.layer.shadowOpacity = 1.0;
    
    //shadowOffset属性控制着阴影的方向和距离。它是一个CGSize的值，宽度控制着阴影横向的位移，高度控制着纵向的位移。shadowOffset的默认值是 {0, -3}，意即阴影相对于Y轴有3个点的向上位移。
    NSLog(@"default shadow offset:%@", NSStringFromCGSize(self.layerView.layer.shadowOffset));
    self.layerView.layer.shadowOffset = CGSizeMake(-3, 3);// 阴影设置为往左下角偏移
    
    //shadowRadius属性控制着阴影的模糊度，当它的值是0的时候，阴影就和视图一样有一个非常确定的边界线。当值越来越大的时候，边界线看上去就会越来越模糊和自然。苹果自家的应用设计更偏向于自然的阴影，所以一个非零值再合适不过了。
    self.layerView.layer.shadowRadius = 10;
}

@end

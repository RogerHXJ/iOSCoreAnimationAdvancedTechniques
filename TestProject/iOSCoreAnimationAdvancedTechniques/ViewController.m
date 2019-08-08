//
//  ViewController.m
//  iOSCoreAnimationAdvancedTechniques
//
//  Created by 黄晓军 on 2019/8/5.
//  Copyright © 2019 黄晓军. All rights reserved.
//

#import "ViewController.h"
#import "Test1_ViewController.h"
#import "Test2_ViewController.h"
#import "Test3_ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *chapterTitles;
@end

static NSString *cellReuseID = @"UITableViewCell";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.chapterTitles = @[@"图层树", @"寄宿图", @"视觉效果"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellReuseID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chapterTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseID forIndexPath:indexPath];
    cell.textLabel.text = self.chapterTitles[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.chapterTitles[indexPath.row];
    UIViewController *vc;
    if ([title isEqualToString:@"图层树"]) {
        vc = [[Test1_ViewController alloc] init];
    } else if ([title isEqualToString:@"寄宿图"]) {
        vc = [[Test2_ViewController alloc] init];
    } else if ([title isEqualToString:@"视觉效果"]) {
        vc = [[Test3_ViewController alloc] init];
    }
    [self.navigationController pushViewController:vc animated:YES];
}


@end

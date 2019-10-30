//
//  ZWHomeVC.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHHomeVC.h"
#import "HHUIDefine.h"

@interface HHHomeVC ()
@end

@implementation HHHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"首页";
    
    NSMutableDictionary *dic = [NSMutableDictionary new];
    [dic setObject:@"1234567890" forKey:@"num1"];
    [dic setObject:@"1234567890" forKey:@"num2"];
    
    NSLog(@"---------------------");
    NSLog(@"%p",dic);
    NSLog(@"%p",dic[@"num1"]);
    NSLog(@"%p",dic[@"num2"]);
    NSLog(@"---------------------");
    
    [self initData];
    [self initUI];
    
}

- (void)initData{
    self.config = @[@{@"cardType":@"HHCardExample",@"exhibitionId":@"card"},//热点应用
                    @{@"cardType":@"HHCardExample",@"exhibitionId":@"ZSBS"},//掌上办事
                    @{@"cardType":@"HHCardExample",@"exhibitionId":@"XX"},//消息
                    @{@"cardType":@"HHCardExample",@"exhibitionId":@"ZSTS"},//掌上投诉
                    @{@"cardType":@"HHCardExample",@"exhibitionId":@"ZSZX"},//掌上咨询
                    @{@"cardType":@"HHCardExample",@"exhibitionId":@"XFZT"},//悬浮展台
    ];
}

- (void)initUI{
    
    self.tableView.frame = CGRectMake(0, NAV_HEIGHT,SCREEN_WIDTH , SCREEN_HEIGHT-NAV_HEIGHT);
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self refreshContentUI];
    
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

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

    self.view.backgroundColor = [UIColor yellowColor];
    
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
    
    self.tableView.frame = CGRectMake(0, NAV_HEIGHT,SCREEN_WIDTH , SCREEN_HEIGHT);
    self.tableView.backgroundColor = [UIColor orangeColor];
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

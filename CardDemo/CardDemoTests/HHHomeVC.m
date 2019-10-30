//
//  ZWHomeVC.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHHomeVC.h"
#import "HHUIDefine.h"
#import "UIView+Frame.h"
#import "HHFakeNav.h"

#define header_height SCALE(110)
@interface HHHomeVC ()
@property (nonatomic, assign) float tableViewY;
@property (nonatomic, strong) UIView *auraImageView;
@property (nonatomic, strong) UIView *tableHeader;
@property (nonatomic, strong) HHFakeNav *navView;

@end

@implementation HHHomeVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"首页";
    
    
    
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
    
    self.tableViewY = StatusBarHeight - 44;
    
    [self.view addSubview:self.auraImageView];
    [self.view addSubview:self.navView];
//    [self.view addSubview:self.loginView];
    
    self.tableView.frame = CGRectMake(0, _tableViewY, SCREEN_WIDTH, SCREEN_HEIGHT -_tableViewY);
    self.tableView.tableHeaderView = self.tableHeader;
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self refreshContentUI];
    
}

//其中同时包含了下拉刷新与氛围图切换的逻辑
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat y = scrollView.contentOffset.y;
    
//    //刷新状态
//    if (y < -50) {
//        if (self.state !=ZWStateRefreshing) {
//            if (scrollView.isDragging) {
//                self.state = ZWStatePulling;
//            }else{
//                self.state = ZWStateRefreshing;
//            }
//        }
//    }else if (y < 0){
//        if (self.state !=ZWStateRefreshing){
//            self.state = ZWStateNormal;
//        }
//    }
    
    //导航栏背景色与头图状态
    if (y < header_height+ _tableViewY -  NAV_HEIGHT ){
        self.auraImageView.y = -y+_tableViewY;
        if (self.auraImageView.y > _tableViewY) {
            self.auraImageView.y = _tableViewY;
        }
        _navView.backgroundColor = [UIColor clearColor];
//        self.navbar.style = ZWNewHomeBarStyleClear;
        self.auraImageView.hidden = NO;
    }else{
        _navView.backgroundColor = [UIColor blueColor];
//        self.navbar.style = ZWNewHomeBarStyleBlue;
        self.auraImageView.hidden = YES;
    }
}

- (UIView *)auraImageView{
    if (!_auraImageView) {
        
        _auraImageView = [[UIView alloc]  initWithFrame:CGRectMake(0, _tableViewY, SCREEN_WIDTH, header_height)];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, header_height)];
        imageView.backgroundColor = [UIColor grayColor];
        imageView.image = [UIImage imageNamed:@"版头风格"];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        [_auraImageView addSubview:imageView];
    }
    return _auraImageView;
    
}

- (UIView *)tableHeader{
    if (!_tableHeader) {
        _tableHeader = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, header_height)];
        _tableHeader.backgroundColor = [UIColor whiteColor];
    
    }
    return _tableHeader;
}


- (HHFakeNav *)navView{
    if (!_navView) {
        _navView = [[HHFakeNav alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAV_HEIGHT)];
        _navView.backgroundColor = [UIColor clearColor];
    
    }
    return _navView;
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

//
//  HHFakeNav.m
//  CardDemo
//
//  Created by huang on 2019/10/30.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHFakeNav.h"
#import "HHUIDefine.h"
#import "UIColor+Hex.h"

@interface HHFakeNav()

@property (nonatomic, weak) UIView *fakeSearchView; // 灰色背景
@property (nonatomic, weak) UIImageView *searchIcon; // icon
@property (nonatomic, weak) UILabel *placeholerLabel; // 文字标签
@property (nonatomic, weak) UIButton *backBtn; // 返回按钮

@end

@implementation HHFakeNav

- (instancetype)init{
    
    if ([super init]) {
        
        [self commonInit];
        
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if ([super initWithFrame:frame]) {
        
        [self commonInit];
        
    }
    
    return self;
    
}

- (void)commonInit{
   
    UIView *fakeSearchView = [[UIView alloc] initWithFrame:CGRectMake(16, NAV_HEIGHT - 38, SCREEN_WIDTH - 32, 32)];
    UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(fakeSearchViewTapAction:)];
    [fakeSearchView addGestureRecognizer:tapGesturRecognizer];
    fakeSearchView.backgroundColor = HexColor(@"#E8EDF1");
    self.fakeSearchView = fakeSearchView;
    fakeSearchView.layer.cornerRadius = 16;
    fakeSearchView.layer.masksToBounds = YES; // 部分UIView需要设置这个属性
    [self addSubview:fakeSearchView];
    
    UIImageView *searchIcon = [[UIImageView alloc] initWithFrame:CGRectMake(16, 6, 20, 20)];
    searchIcon.image = [UIImage imageNamed:@"fakesearchnav_searchicon"];
    searchIcon.backgroundColor = HexColor(@"#E8EDF1");
    [fakeSearchView addSubview:searchIcon];
    
    UILabel *placeholerLabel =[[UILabel alloc] initWithFrame:CGRectMake(16 + 20, 6, SCREEN_WIDTH - 46 - 16 - 32 - 20, 20)];
    placeholerLabel.backgroundColor = HexColor(@"#E8EDF1");
    placeholerLabel.text = @"查询服务";
    placeholerLabel.textColor = HexColor(@"#95A3B8");
    placeholerLabel.textAlignment=NSTextAlignmentLeft;
    self.placeholerLabel = placeholerLabel;
    [fakeSearchView addSubview:placeholerLabel];
    
}

// 点击了饭回
- (void)clickBack{
    
    if ([self.delegate respondsToSelector:@selector(backBtnAction)]) {
        
        [self.delegate backBtnAction];
        
    }
    
}

// 点击了搜索
- (void)fakeSearchViewTapAction:(id)tap{
    
    if ([self.delegate respondsToSelector:@selector(pushToSearchVC)]) {
        
        [self.delegate pushToSearchVC];
        
    }
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
}

@end

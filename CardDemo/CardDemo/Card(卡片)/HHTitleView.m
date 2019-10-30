//
//  HHTitleView.m
//  CardDemo
//
//  Created by huang on 2019/10/30.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHTitleView.h"
#import "HHUIDefine.h"

@interface HHTitleView()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UIButton *moreBtn;

@end

@implementation HHTitleView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit{

    self.titleLabel = [[UILabel alloc] initWithFrame:HHRectMake(16, 0, 88, 30)];

    self.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.text = @"";
    [self addSubview:self.titleLabel];
    
    self.moreBtn = [[UIButton alloc] initWithFrame:HHRectMake(375 - 40 - 16, 0, 40, 30)];
    [self.moreBtn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [self.moreBtn setTitle:@"更多" forState:UIControlStateNormal];
    [self.moreBtn addTarget:self action:@selector(moreBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.moreBtn.titleLabel.font = [UIFont systemFontOfSize:SCALE(12)];
    [self.moreBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self addSubview:self.moreBtn];
    
}

- (void)moreBtnClick:(UIButton *)sender{

    if ([self.delegate respondsToSelector:@selector(didClickMoreBtn)]) {
        [self.delegate didClickMoreBtn];
    }
    
}

#pragma mark -setter
- (void)setTitleStr:(NSString *)titleStr{
    _titleStr = titleStr;
    self.titleLabel.text = titleStr;
}

-(void)setMoreBtnHidden:(BOOL)moreBtnHidden{
    _moreBtnHidden = moreBtnHidden;
    self.moreBtn.hidden = moreBtnHidden;
}
@end

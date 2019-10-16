//
//  HHTemplateVC.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHTemplateVC.h"
#import "HHCard.h"
#import "HHUIDefine.h"

@interface HHTemplateVC ()<UITableViewDelegate,UITableViewDataSource,HHCardDelegate>

@end


@implementation HHTemplateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cardFactory = [HHCardFactory new];
    [self initTableView];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

- (void)refreshContentUI{
    if (self.config&&self.config.count > 0) {
        [self createCards];
    }
}

- (void)createCards{
    self.cards = [NSMutableArray array];
    for (NSDictionary *cardConfig in self.config) {
        HHCard *card = [self.cardFactory cardWithConfig:cardConfig];
        card.delegate = self;
        card.naViewController = self;
        
        if (card) {
            [self.cards addObject:card];
        }
    }
}

- (void)initTableView {
    
    CGRect frame = self.view.bounds;
    frame.origin.y += NAV_HEIGHT;
    frame.size.height -= NAV_HEIGHT;
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, NAV_HEIGHT, SCREEN_HEIGHT, SCREEN_HEIGHT - NAV_HEIGHT) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.allowsSelection = NO;
    
    if (@available(iOS 11.0, *)) {
        [self.tableView setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
    
    [self.view addSubview:self.tableView];
}

#pragma mark -table delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cards.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HHCard *card = self.cards[indexPath.row];
    if (!card.cardView) {
       return [UITableViewCell new];
    }
    
    [card cardHasShow];
    card.cardView.clipsToBounds = YES;
    card.cardView.backgroundColor = [UIColor purpleColor];
    return card.cardView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HHCard *card = self.cards[indexPath.row];
    return card.cardHeight;
}

#pragma mark - ZWCardDelegate
- (void)card:(id)card shouldRefreshWithHeight:(CGFloat)height{
    
    [self.tableView reloadData];

}

@end

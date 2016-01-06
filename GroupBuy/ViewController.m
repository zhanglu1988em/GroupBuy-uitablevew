//
//  ViewController.m
//  GroupBuy
//
//  Created by zhanglu1988em on 16/1/6.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"
#import "GroupBuyCell.h"
#import "GroupBuyMode.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray*  dataList;

@end


@implementation ViewController


-(NSArray*) dataList
{
    if (_dataList == nil) {
        _dataList = [GroupBuyMode groupBuyModes];
    }
    return _dataList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
    self.tableView.contentInset = UIEdgeInsetsMake(20, 10, 20, 20);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return  1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *id = @"cell";
    
    GroupBuyCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"GroupBuyCell" owner:nil options:nil]  lastObject];
        NSLog(@"crete Cell");
    }
    
    GroupBuyMode *mode = self.dataList[indexPath.row];
    [cell.iconImageView setImage:[UIImage imageNamed:mode.icon]];
    [cell.titleLbl setText:mode.title];
    [cell.priceLbl setText:mode.price];
    [cell.buyCountLbl setText:mode.buyCount];
    return cell;
}

@end

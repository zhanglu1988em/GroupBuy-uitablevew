//
//  GroupBuyCell.h
//  GroupBuy
//
//  Created by zhanglu1988em on 16/1/6.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupBuyCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *priceLbl;
@property (weak, nonatomic) IBOutlet UILabel *buyCountLbl;

@end

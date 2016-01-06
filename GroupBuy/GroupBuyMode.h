//
//  GroupBuyMode.h
//  GroupBuy
//
//  Created by zhanglu1988em on 16/1/6.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupBuyMode : NSObject

@property (nonatomic,copy) NSString* title;
@property (nonatomic,copy) NSString* icon;
@property (nonatomic,copy) NSString* price;
@property (nonatomic,copy) NSString* buyCount;

-(instancetype) initWithDict: (NSDictionary*) dict;
+(instancetype) groupBuyModeWithDict:(NSDictionary*) dict;
+(NSArray*) groupBuyModes;

@end
